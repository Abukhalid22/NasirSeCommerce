# NasirSeCommerce
Responsive Ecommerce website using asp.net and paypal as payment

## E-Commerce Website Description
The website is a fully functional e-commerce web application, where it will include a front-end, as well as a back-end. The core functionality of the system is to allow customers to purchase variety of products using the PayPal checkout. The project will have a front-end and back-end functionalities, where the admin can add products and the customers can only purchase those products from the client side. 
Only the admin will have access to the admin side of the website. The customer can register, as well as login to the system. Moreover, the customer can view previous purchases that they made in the past.   

### The functional requirements
#### System Requirements for Customer
- The customer should be able to add a product to cart
- Customer should be able to view products descriptions
- Customer should be able to view shopping cart
- Customer should be able to update product quantity in the cart
-	Customer should be able to remove a product from cart
-	Customer should be able to make a payment of all products in cart using PayPal sandbox payment checkout
-	The customer should be able to view all the orders made
-	The customer should be able to search for products 
-	The customer should be able to filter products
-	The customer should be able to register or login 
-	Before customer can purchase a product, he must register and be a member
-	Customer should be able to update his personal details

#### System Requirements for Admin
-	The admin should be able to add a new product
-	The admin should be able to update/delete a product
-	The admin should be able to add a new category
-	The admin should be able to update/delete a category
-	The admin should be able to view all orders that are made by the customers
-	The admin should be able to view customer details

#### Non-functional requirements 
-	The website should be mobile friendly and responsive
-	The website should function at an adequate speed

## GUI Design (Client Side)

![image](https://user-images.githubusercontent.com/53325143/93011237-7677a300-f58c-11ea-90a6-608dedac209c.png)

(Figure 1)

This is the product page, where the consumers are able to view available items listed and purchase the items they require as shown on figure 1. 

![image](https://user-images.githubusercontent.com/53325143/93011265-bccd0200-f58c-11ea-9524-276c95ae430a.png)

(Figure 2)

The users have the option to select one of the options displayed on the navigation bar, such as registering, logging in, the home page, or viewing all the products. Not only that, but the users can also view the total items in the shopping cart as well as the total cost. Finally, the users can search for a particular product by using the search box provided as shown on figure 2. 

![image](https://user-images.githubusercontent.com/53325143/93011308-15040400-f58d-11ea-8f63-b441fdba236a.png)

(Figure 5) 

![image](https://user-images.githubusercontent.com/53325143/93011315-2220f300-f58d-11ea-89a4-c3c9001b19ac.png)

(figure 6)

Once a user clicks on a particular product, the product description page will be displayed. On this page the user can view the product details more specifically. Moreover, the user can also enter the number of quantity he/she requires as shown on figure 5.  Once the quantity is entered by the user, they can select the add to cart button as shown on figure 6. This would add the product to the cart so it can be purchased later. 

![image](https://user-images.githubusercontent.com/53325143/93011338-4f6da100-f58d-11ea-83dd-f0a2942e3cf4.png)

(figure 7)

However, if the product stock is empty, the user cannot make any orders on the product. This is because the text box functionality for the quantity amount is disabled once the product stock is empty as shown on figure 7.

![image](https://user-images.githubusercontent.com/53325143/93011368-9491d300-f58d-11ea-87ec-433d1ac1102a.png)

(figure 8)

![image](https://user-images.githubusercontent.com/53325143/93011379-a6737600-f58d-11ea-9ec0-922aafeadc57.png)

(figure 9)

Once the user has added all the products, he/she requires, they then can see all of their products stored inside their carts. Figure 8 displays how the shopping cart page looks. 
Figure 9 shows the number of total items stored inside the shopping cart. Likewise, it also shows the total amount of cost on all the products inside the shopping cart. 

![image](https://user-images.githubusercontent.com/53325143/93011396-d3278d80-f58d-11ea-9d7e-df6c1f73ee89.png)

(figure 10)

Before the user can purchase any products, they first must sign in. this is the login page where the user must put his/her email and password. 

![image](https://user-images.githubusercontent.com/53325143/93011409-fd794b00-f58d-11ea-847c-ec0f1993aa79.png)

(figure 11)

However, if the user is not a member, they then have the option to register, where as shown on figure 12, the user must enter their first name and last name, email, password, city, state, postcode, phone number, and their address. The user can then click the register button. 

![image](https://user-images.githubusercontent.com/53325143/93011425-20a3fa80-f58e-11ea-99bf-76a58c35e078.png)

![image](https://user-images.githubusercontent.com/53325143/93011437-3d403280-f58e-11ea-9978-2ac3e4b6f495.png)

![image](https://user-images.githubusercontent.com/53325143/93011441-416c5000-f58e-11ea-99c2-60ad6d23ecda.png)


(figure 12)

Once the user clicks the continue button, the web page redirects to the PayPal website. On this page the user can make payments through using PayPal payment, Likewise, as shown on figure 14, the total cost amount of the products is shown as well at the top of the page.

## GUI Design (Admin Side)

![image](https://user-images.githubusercontent.com/53325143/93011469-6d87d100-f58e-11ea-9216-eaf197f041e9.png)

(figure 13)

The admin must first login his credentials before entering the admin side of the system. The details the admin requires are their email and password as shown on figure 13. This is because of security reasons, because a user other than the admin should not be able to enter the admin side. Mainly because on the admin side, products can be added, as well as deleted. This should only be done by the admin. 

![image](https://user-images.githubusercontent.com/53325143/93011516-ba6ba780-f58e-11ea-8b4d-4e2740b0099a.png)

(figure 14)

On this page the admin can view the full details of the customer, as well as their full order, such as the products that they have purchased. For this reason, the admin can email, call, or send the orders to their address. 
Likewise, the admin can also view the name of the product the customer ordered, its image, the product price, the number of quantity they ordered, and the total price that they paid for the orders as shown on figure 14. These orders will only be displayed here once the payment has gone through successfully. 

![image](https://user-images.githubusercontent.com/53325143/93011537-e38c3800-f58e-11ea-9d4e-f1615cc4e878.png)

(figure 15)

![image](https://user-images.githubusercontent.com/53325143/93011539-e850ec00-f58e-11ea-80e9-f979949aed9e.png)

(figure 16)

On this page the admin can add a new product onto the website. Once the admin adds the product, the customers are then able to purchase that particular product. The admin would need to add the product name, product description, the price of the product, the number of quantities available, and the appropriate category it belongs to. Also, the admin would need to upload an image of the product. 
The admin would then select the add product button. Once the admin selects the button, the system displays a successful message telling the admin that the product was added successfully, likewise, all the text boxes are cleared as shown on figure 15. 

![image](https://user-images.githubusercontent.com/53325143/93011559-1d5d3e80-f58f-11ea-9b07-c8d79307c0cf.png)

(figure 17)

Once the admin is done with working with the website, they can logout of the system by selecting the logout button ash shown on figure 30. 
















