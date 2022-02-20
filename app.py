from flask import Flask


###### App setup
app = Flask(__name__)
app.config.from_pyfile('settings.py')

###### Pages
## AboutUs
from pages.AboutUs.AboutUs import AboutUs
app.register_blueprint(AboutUs)

## Cakes
from pages.Cakes.Cakes import Cakes
app.register_blueprint(Cakes)

## CheckOut
from pages.CheckOut.CheckOut import CheckOut
app.register_blueprint(CheckOut)

## Classes
from pages.Classes.Classes import Classes
app.register_blueprint(Classes)

## Contact
from pages.Contact.Contact import Contact
app.register_blueprint(Contact)

## CustomizedCake
from pages.CustomizedCake.CustomizedCake import CustomizedCake
app.register_blueprint(CustomizedCake)

## Deliveries
from pages.Deliveries.Deliveries import Deliveries
app.register_blueprint(Deliveries)

## Gallery
from pages.Gallery.Gallery import Gallery
app.register_blueprint(Gallery)

## Home
from pages.Home.Home import Home
app.register_blueprint(Home)

## Question
from pages.Question.Question import Question
app.register_blueprint(Question)

## Product
from pages.Product.Product import Product
app.register_blueprint(Product)

## Register
from pages.Register.Register import Register
app.register_blueprint(Register)

## ShoppingCart
from pages.ShoppingCart.ShoppingCart import ShoppingCart
app.register_blueprint(ShoppingCart)

## SignIn
from pages.SignIn.SignIn import SignIn
app.register_blueprint(SignIn)

## OrderConfirm
from pages.OrderConfirm.OrderConfirm import OrderConfirm
app.register_blueprint(OrderConfirm)

##My_Orders
from pages.My_Orders.My_Orders import My_Orders
app.register_blueprint(My_Orders)

##Order_Details
from pages.Order_Details.Order_Details import Order_Details
app.register_blueprint(Order_Details)


## Page error handlers
from pages.page_error_handlers.page_error_handlers import page_error_handlers
app.register_blueprint(page_error_handlers)


###### Components
## Footer
from components.Footer.Footer import Footer
app.register_blueprint(Footer)

## Side_Navigation_Bar
from components.Side_Navigation_Bar.Side_Navigation_Bar import Side_Navigation_Bar
app.register_blueprint(Side_Navigation_Bar)

## Top_Navigation_Bar
from components.Top_Navigation_Bar.Top_Navigation_Bar import Top_Navigation_Bar
app.register_blueprint(Top_Navigation_Bar)

