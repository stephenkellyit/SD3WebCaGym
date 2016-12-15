package models;

import java.util.*;
import javax.persistence.*;

import com.avaje.ebean.Model;
import play.data.format.*;
import play.data.validation.*;

// Product Entity managed by the ORM
@Entity
public class Product extends Model {

    // Properties
    // Annotate id as the primary key
    @Id
    private Long id;

    // Other fields marked as being required (for validation purposes)
    @Constraints.Required
    private String name;

    @ManyToOne
    private Category category;

    @OneToMany(cascade = CascadeType.ALL)
    private List<Review> reviews;

    @Constraints.Required
    private String description;

    @Constraints.Required
    private int	stock;

    @Constraints.Required
    private double price;

    // Default constructor
    public  Product() {
    }

    // Constructor to initialise object
    public  Product(Long id, String name, String description, int stock, double price, List<Review> reviews) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.stock = stock;
        this.price = price;
        this.reviews = reviews;
    }

    //Generic query helper for entity Computer with id Long
    public static Finder<Long,Product> find = new Finder<Long,Product>(Product.class);

    // Find all Products in the database
    // Filter product name 
    public static List<Product> findAll() {
        return Product.find.all();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

     public List<Review> getReviews() {
        return reviews;
    }
    


    public void setReviews(List<Review> reviews) {
        this.reviews = reviews;
    }
    
    

    public double getAvgStars() {
        double sum = 0;

       for (int i=0; i < reviews.size(); i++) {
        sum = sum + reviews.get(i).getStars();
        }
  
   double avgStars = sum / reviews.size();


        return avgStars;
    }
    

    
    public int getNumStars() {
        int stars = 0;
      
         if(getAvgStars() == 5) {
                      stars = 5;        
                    } 
                
       else if (getAvgStars() >= 4 && getAvgStars() < 5 ){
                     stars = 4;        
                    }
       else if (getAvgStars() >= 3 && getAvgStars() < 4 ){
                     stars = 3;        
                    }
       else if (getAvgStars() >= 2 && getAvgStars() < 3 ){
                     stars = 2;        
                    }
       else if (getAvgStars() >= 1 && getAvgStars() < 2 ){
                     stars = 1;        
                    }
       else  {
                    stars = 0;
        }


        return stars;
    }






}
