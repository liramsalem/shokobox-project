from flask import Blueprint, render_template

# catalog blueprint definition
Side_Navigation_Bar = Blueprint('Side_Navigation_Bar', __name__, static_folder='static', static_url_path='/Side_Navigation_Bar', template_folder='templates')


