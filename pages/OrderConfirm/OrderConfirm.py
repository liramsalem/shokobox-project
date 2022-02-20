from flask import Blueprint, render_template,redirect,request,session, url_for
from utilities.db.order import *
from utilities.db.shopping_cart import *
from utilities.db.customized import *


# catalog blueprint definition
OrderConfirm = Blueprint('OrderConfirm', __name__, static_folder='static', static_url_path='/OrderConfirm', template_folder='templates')


@OrderConfirm.route('/OrderConfirm')
def OrderConfirm_index():
    order_id = order.order_id(session['user_email'])
    customized = shoping_cart.get_all_customized_cart_user(session['user_email'])
    res = shoping_cart.get_cart_user(session['user_email'])
    shoping_cart.remove_All_User_products(session['user_email'])
    customized_cake.remove_All_User_customized(session['user_email'])
    return render_template('OrderConfirm.html',res=res,customized=customized,order_id=order_id )
