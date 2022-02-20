from flask import Blueprint, render_template,redirect,request,session, url_for
from utilities.db.order import *


# catalog blueprint definition
Order_Details = Blueprint('Order_Details', __name__, static_folder='static', static_url_path='/Order_Details', template_folder='templates')


@Order_Details.route('/Order_Details')
def Order_Details_index():
    order_id = request.args.get("order_id")
    print(order_id)
    res = order.get_all_items_in_order_of_user(order_id)
    print(res)
    return render_template('Order_Details.html', res=res,order_id=order_id )


