from flask import Blueprint, render_template,redirect,request,session, url_for
from utilities.db.order import *
from utilities.db.shopping_cart import *


# catalog blueprint definition
CheckOut = Blueprint('CheckOut', __name__, static_folder='static', static_url_path='/CheckOut', template_folder='templates')


# Routes
@CheckOut.route('/CheckOut',methods=['GET','POST'])
def index():
    all_cakes = shoping_cart.get_cart_user(session['user_email'])
    all_customized = shoping_cart.get_all_customized_cart_user(session['user_email'])
    total = 0
    delivery = 35
    total_cakes = shoping_cart.get_total_price(session['user_email'])[0][0]
    total_cust = shoping_cart.get_total_price_cust(session['user_email'])[0][0]
    if not total_cakes:
        total_cakes = 0
    if not total_cust:
        total_cust = 0
    total = total_cakes + total_cust
    if total == 0:
        delivery = 0
    tax = round((float(0.17) * float(total)), 2)
    summery = round((float(tax) + float(total) + float(delivery)), 2)
    if request.method == 'POST':
        fullname_order = request.form['fullname1']
        email_order = request.form['email']
        phone_order = request.form['phone']
        street_order = request.form['street1']
        city_order = request.form['city1']
        state_order = request.form['state1']
        zip_order = request.form['zip1']
        order.insert_to_order(fullname_order,email_order,phone_order,street_order,city_order,state_order,zip_order,session['user_email'],summery)
        order_id= order.order_id(session['user_email'])
        for i in all_cakes:
            order.insert_to_items_in_order(order_id,i[0],i[1])
        for i in all_customized:
            order.insert_to_items_in_order(order_id,i[8],1)
        return redirect('/OrderConfirm')
    return render_template('CheckOut.html',cakes_list = all_cakes, customized_list= all_customized)

