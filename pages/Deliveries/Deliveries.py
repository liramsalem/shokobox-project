from flask import Blueprint, render_template

# catalog blueprint definition
Deliveries = Blueprint('Deliveries', __name__, static_folder='static', static_url_path='/Deliveries', template_folder='templates')


# Routes
@Deliveries.route('/Deliveries')
def index():
    return render_template('Deliveries.html')
