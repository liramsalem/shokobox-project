from flask import Blueprint, render_template, request, session
from utilities.db.products import *

# catalog blueprint definition
Product = Blueprint('Product', __name__, static_folder='static', static_url_path='/Product', template_folder='templates')

# Routes
@Product.route('/Product', methods=['GET'])
def index_Product():
    if session['user_name']:
        connect=True
    else:
        connect=False
    prod_id = request.args.get("prod_id")
    print(prod_id)
    res = Products.get_cakes_by_ids(prod_id)[0]
    print(res)
    prod_cat, prod_id, prod_desc, prod_img, prod_name, prod_price = res
    return render_template('Product.html', prod_id=prod_id,prod_desc=prod_desc, prod_img=prod_img, prod_name=prod_name,prod_price=prod_price,connect=connect)

