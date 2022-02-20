from flask import Blueprint, render_template

# catalog blueprint definition
Footer = Blueprint('Footer', __name__, static_folder='static', static_url_path='/Footer', template_folder='templates')


