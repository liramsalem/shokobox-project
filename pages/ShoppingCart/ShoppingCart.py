from flask import Flask, Blueprint, render_template, redirect, url_for, session, request
from utilities.db.shopping_cart import *
from utilities.db.customized import *

# catalog blueprint definition
ShoppingCart = Blueprint('ShoppingCart', __name__, static_folder='static', static_url_path='/ShoppingCart', template_folder='templates')


@ShoppingCart.route('/ShoppingCart',methods=['GET','POST'])
def shopping_cart():
     if session['user_email']== '':
         return render_template('SignIn.html', msg='sign_in_to_add_cart')
     if request.method == 'POST' and request.form['typeofcake'] == "cake":
            prod_id = request.form['prod_id']
            if request.form['req'] == "add":
                shoping_cart.insert_product_to_cart(session['user_email'], prod_id)
            if request.form['req'] == "remove":
                shoping_cart.remove_product_from_cart(session['user_email'], prod_id)
     if request.method == 'POST' and request.form['typeofcake'] == "customized":
        tran_num = request.form['transaction_number']
        if request.form['req'] == "remove":
            customized_cake.remove_customize_from_customized_cakes(session['user_email'], tran_num)
     customized = shoping_cart.get_all_customized_cart_user(session['user_email'])
     res = shoping_cart.get_cart_user(session['user_email'])
     total = 0
     delivery = 35
     total_cakes = shoping_cart.get_total_price(session['user_email'])[0][0]
     total_cust = shoping_cart.get_total_price_cust(session['user_email'])[0][0]
     if not total_cakes:
        total_cakes = 0
     if not total_cust:
        total_cust = 0
     total = total_cakes + total_cust
     if total==0:
         delivery = 0
     tax = round((float(0.17) * float(total)), 2)
     summery = round((float(tax) + float(total) + float(delivery)), 2)
     return render_template('ShoppingCart.html',entries=res, customized=customized, total=total,tax=tax,summery=summery)

