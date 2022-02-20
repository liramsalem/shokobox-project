from flask import Blueprint, render_template,redirect,request,session, url_for
from utilities.db.order import *
from utilities.db.shopping_cart import *
from utilities.db.customized import *


# catalog blueprint definition
My_Orders = Blueprint('My_Orders', __name__, static_folder='static', static_url_path='/My_Orders', template_folder='templates')


@My_Orders.route('/My_Orders')
def My_Orders_index():
    all_order_id = order.get_all_order_id_of_user(session['user_email'])
    return render_template('My_Orders.html',all_order_id=all_order_id)


