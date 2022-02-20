from flask import Blueprint, render_template
from utilities.db.products import *

# catalog blueprint definition
Cakes = Blueprint('Cakes', __name__, static_folder='static', static_url_path='/Cakes', template_folder='templates')


# Routes
@Cakes.route('/Cakes')
def index():
    res = Products.get_all_cakes()
    return render_template('Cakes.html',entries = res)

