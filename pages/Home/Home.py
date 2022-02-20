from flask import Blueprint, render_template, session

# catalog blueprint definition
Home = Blueprint('Home', __name__, static_folder='static', static_url_path='/Home', template_folder='templates')


# Routes
@Home.route('/')
@Home.route('/Home')
def home_index():
    if 'user_email' in session:
        connect = True
    else:
        session['user_email'] = ''
        session['user_name'] = ''
    return render_template('Home.html')
