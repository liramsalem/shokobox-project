from flask import Blueprint, render_template

# catalog blueprint definition
Top_Navigation_Bar = Blueprint('Top_Navigation_Bar', __name__, static_folder='static', static_url_path='/Top_Navigation_Bar', template_folder='templates')


