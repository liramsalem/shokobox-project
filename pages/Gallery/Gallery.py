from flask import Blueprint, render_template
from utilities.db.products import *


# catalog blueprint definition
Gallery = Blueprint('Gallery', __name__, static_folder='static', static_url_path='/Gallery', template_folder='templates')


# Routes
@Gallery.route('/Gallery')
def index():
    res = Products.get_all_gallery_cakes()
    return render_template('Gallery.html',entries = res)



