package controllers;

import controllers.security.AuthAdmin;
import controllers.security.Secured;
import play.mvc.*;
import play.data.*;
import play.db.ebean.Transactional;
import play.api.Environment;

import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

import views.html.*;

// Import models
import models.*;
import models.users.*;


public class HomeController extends Controller {

    // Declare a private FormFactory instance
    private FormFactory formFactory;

    /** http://stackoverflow.com/a/37024198 **/
    private Environment env;

    //  Inject an instance of FormFactory it into the controller via its constructor
    @Inject
    public HomeController(FormFactory f, Environment e) {
        this.env = e;
        this.formFactory = f;
    }



     // Method retuns the logged in user (or null)
    private User getUserFromSession() {
        return User.getUserById(session().get("email"));
    }



    public Result index() {
        return ok(index.render(getUserFromSession()));
    }

    public Result about() {
        return ok(about.render(getUserFromSession()));
       }

      public Result membership() {
        return ok(membership.render(getUserFromSession()));
       }

       
     public Result equipment() {
        List<Product> productsList = Product.findAll();
        
        return ok(equipment.render(productsList, getUserFromSession()));
       }

       public Result clothing() {
        return ok(clothing.render(getUserFromSession()));
       }
       public Result supplements() {
        return ok(supplements.render(getUserFromSession()));
       }
       
//public Result login() {
       // return ok(login.render(getUserFromSession()));
       //}
       public Result signUp() {
        return ok(signUp.render(getUserFromSession()));
       }




       public Result productsHome() {
        return ok(productsHome.render(getUserFromSession()));
       }


   public Result products(Long cat) {

        // Get list of all categories in ascending order
        List<Category> categoriesList = Category.findAll();
        List<Product> productsList = new ArrayList<Product>();
        List<Review> reviewsList = new ArrayList<Review>();

        if (cat == 0) {
            // Get list of all categories in ascending order
            productsList = Product.findAll();
        }
        else {
            // Get products for selected category
            // Find category first then extract products for that cat.
            productsList = Category.find.ref(cat).getProducts();
        }

        return ok(products.render(productsList, categoriesList, getUserFromSession(), env, reviewsList));
    }



    // Render and return  the add new product page
    // The page will load and display an empty add product form
    public Result addProduct() {

        // Create a form by wrapping the Product class
        // in a FormFactory form instance
        Form<Product> addProductForm = formFactory.form(Product.class);

        // Render the Add Product View, passing the form object   
        return ok(addProduct.render(addProductForm, getUserFromSession()));
    }

    @Transactional
    public Result addProductSubmit() {

        // Create a product form object (to hold submitted data)
        // 'Bind' the object to the submitted form (this copies the filled form)
        Form<Product> newProductForm = formFactory.form(Product.class).bindFromRequest();

        // Check for errors (based on Product class annotations)
        if(newProductForm.hasErrors()) {
            // Display the form again
            return badRequest(addProduct.render(newProductForm, getUserFromSession()));
        }

        // Extract the product from the form object
        Product p = newProductForm.get();

        if (p.getId() == null) {
            // Save to the database via Ebean (remember Product extends Model)
            p.save();
        }
        // Product already exists so update
        else if (p.getId() != null) {
            p.update();
        }

        // Set a success message in temporary flash
        // for display in return view
        flash("success", "Product " + p.getName() + " has been created/ updated");

        // Redirect to the admin home
        return redirect(controllers.routes.HomeController.products(0));
    }


    @Security.Authenticated(Secured.class)
    @With(AuthAdmin.class)
    // Update a product by ID
    // called when edit button is pressed
    @Transactional
    public Result updateProduct(Long id) {

        Product p;
        Form<Product> productForm;

        try {
            // Find the product by id
            p = Product.find.byId(id);

            // Create a form based on the Product class and fill using p
            productForm = formFactory.form(Product.class).fill(p);
        
            } catch (Exception ex) {
                // Display an error message or page
                return badRequest("error");
        }
        // Render the updateProduct view - pass form as parameter
        return ok(addProduct.render(productForm, getUserFromSession()));
    }

    // Delete Product by id
    @Transactional
    public Result deleteProduct(Long id) {

        // find product by id and call delete method
        Product.find.ref(id).delete();
        // Add message to flash session
        flash("success", "Product has been deleted");

        // Redirect to products page
        return redirect(routes.HomeController.products(0));
    }


}




