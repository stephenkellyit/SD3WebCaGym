# --- Sample dataset

# --- !Ups

insert into category (id,name) values ( 1,'Mens' );
insert into category (id,name) values ( 2,'Womens' );
insert into category (id,name) values ( 3,'Unisex & Kids' );
insert into category (id,name) values ( 4,'Hats' );
insert into category (id,name) values ( 5,'Miscellaneous' );

insert into product (id,category_id,name,description,stock,price) values ( 1,1,'Mens T-Shirt','Yellow T-shirt, 100% Cotton',100,12.00 );
insert into product (id,category_id,name,description,stock,price) values ( 2,2,'Womens T-Shirt','Yellow T-shirt, 100% Cotton',45,12.00 );
insert into product (id,category_id,name,description,stock,price) values ( 3,2,'Low Neck T-Shirt','White T-shirt, 100% Cotton',5,10.00 );
insert into product (id,category_id,name,description,stock,price) values ( 4,3,'Unisex T-Shirt','White Logo T-shirt, 100% Cotton',45,14.99 );
insert into product (id,category_id,name,description,stock,price) values ( 5,3,'Unisex T-Shirt','Burgundy Logo T-shirt, 100% Cotton',5,14.99 );
insert into product (id,category_id,name,description,stock,price) values ( 6,2,'Womens T-Shirt','White and Red Long Shelve T-shirt, 100% Cotton',12,14.99 );
insert into product (id,category_id,name,description,stock,price) values ( 7,3,'Unisex T-Shirt','White and Black T-shirt, 100% Cotton',50,16.99 );
insert into product (id,category_id,name,description,stock,price) values ( 8,1,'Mens T-Shirt','Burgundy T-shirt, 100% Cotton',45,12.00 );
insert into product (id,category_id,name,description,stock,price) values ( 9,1,'Mens Captain T-Shirt','Yellow Captain T-shirt, 100% Cotton',5,14.99 );
insert into product (id,category_id,name,description,stock,price) values ( 10,3,'Kids T-Shirt','Yellow Kids T-shirt, 100% Cotton',10,10.00 );
insert into product (id,category_id,name,description,stock,price) values ( 11,1,'Mens Jumper','Red Average Joe''s Jumper, 100% Cotton',5,20.00 );
insert into product (id,category_id,name,description,stock,price) values ( 12,2,'Womens Jumper','Red Average Joe''s Jumper, 100% Cotton',50,20.00 );
insert into product (id,category_id,name,description,stock,price) values ( 13,4,'Trucker Hat','Red and White Average Joe''s Trucker hat',100,12.00 );
insert into product (id,category_id,name,description,stock,price) values ( 14,5,'Average Joe''s Badge','Covered with scratch and UV-resistant Mylar',45,3.00 );
insert into product (id,category_id,name,description,stock,price) values ( 15,5,'Average Joe''s Bag','Lightweight, Durable Bag',5,18.00 );
insert into product (id,category_id,name,description,stock,price) values ( 16,5,'Average Joe''s Badge','Covered with scratch and UV-resistant Mylar',45,3.00 );
insert into product (id,category_id,name,description,stock,price) values ( 17,5,'Average Joe''s Mug','White Large Mug',5,8.00 );
insert into product (id,category_id,name,description,stock,price) values ( 18,5,'Average Joe''s Badge','Covered with scratch and UV-resistant Mylar',12,3.00 );
insert into product (id,category_id,name,description,stock,price) values ( 19,5,'Average Joe''s Flask','Stay Hydrated with this High-quality Flask',50,15.00 );
insert into product (id,category_id,name,description,stock,price) values ( 20,5,'Average Joe''s Keyring','Red Average Joe''s Keyring',45,4.00 );
insert into product (id,category_id,name,description,stock,price) values ( 21,5,'Average Joe''s Keyring','Yellow Average Joe''s Keyring',5,4.00 );
insert into product (id,category_id,name,description,stock,price) values ( 22,5,'Kitchen Apron','Yellow Average Joe''s Apron',10,10.00 );
insert into product (id,category_id,name,description,stock,price) values ( 23,5,'Average Joe''s Fridge Magnet','Red Fridge Magnet',5,5.00 );
insert into product (id,category_id,name,description,stock,price) values ( 24,5,'Average Joe''s Badge','Covered with scratch and UV-resistant Mylar',50,3.00 );
insert into product (id,category_id,name,description,stock,price) values
( 25,4,'Gold Trucker Hat','All Gold Average Joe''s Trucker hat',50,14.00 );

insert into user (email,name,password,role) values ( 'admin@products.com', 'Alice Admin', 'password', 'admin' );

insert into user (email,name,password,role) values ( 'manager@products.com', 'Bob Manager', 'password', 'manager' );

insert into user (email,name,password,role) values ( 'customer@products.com', 'Charlie Customer', 'password', 'customer' );


insert into Review(id,product_id,name,description,stars) values
( 1,1,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 2,1,'Joe Bloggs','Great buy', 3);
insert into Review(id,product_id,name,description,stars) values
( 3,1,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 4,2,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 5,2,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 6,3,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 7,3,'Joe Bloggs','Great buy', 3);
insert into Review(id,product_id,name,description,stars) values
( 8,3,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 9,4,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 10,5,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 11,6,'Joe Bloggs','Great buy', 3);
insert into Review(id,product_id,name,description,stars) values
( 12,6,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 13,7,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 14,7,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 15,8,'Joe Bloggs','Great buy', 3);
insert into Review(id,product_id,name,description,stars) values
( 16,9,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 17,10,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 18,10,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 19,10,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 20,11,'Joe Bloggs','Great buy', 3);
insert into Review(id,product_id,name,description,stars) values
( 21,11,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 22,12,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 23,13,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 24,14,'Joe Bloggs','Great buy', 3);
insert into Review(id,product_id,name,description,stars) values
( 25,15,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 26,16,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 27,11,'Joe Bloggs','Great buy', 3);
insert into Review(id,product_id,name,description,stars) values
( 28,11,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 29,12,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 30,13,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 31,14,'Joe Bloggs','Great buy', 3);
insert into Review(id,product_id,name,description,stars) values
( 32,15,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 33,16,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 34,25,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 35,24,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 36,23,'Joe Bloggs','Great buy', 3);
insert into Review(id,product_id,name,description,stars) values
( 37,22,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 38,21,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 39,20,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 40,19,'Joe Bloggs','Great buy', 4);
insert into Review(id,product_id,name,description,stars) values
( 41,18,'Joe Bloggs','Great buy', 3);
insert into Review(id,product_id,name,description,stars) values
( 42,17,'Joe Bloggs','Great buy', 5);
insert into Review(id,product_id,name,description,stars) values
( 43,16,'Joe Bloggs','Great buy', 4);



