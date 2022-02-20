
from flask import Blueprint, render_template,session,redirect,request
from utilities.db.users import *

# catalog blueprint definition
SignIn = Blueprint('SignIn', __name__, static_folder='static', static_url_path='/SignIn', template_folder='templates')


# Routes
@SignIn.route('/SignIn')
def index():
    return render_template('SignIn.html')


@SignIn.route('/SignIn_form',methods=['GET','POST'])
def sign_in_form():
    if request.method == 'POST':
        user_email = request.form['email']
        password = request.form['psw']
        found = user.check_user_in_db(user_email, password)
        if found:
            session['user_email'] = user_email
            session['user_name']= user.get_user_name(user_email)
            return render_template('Home.html')
        else:
            return render_template('SignIn.html', msg='error')



@SignIn.route('/LogOut')
def log_out_func():
    session['user_email']= ''
    session['user_name']= ''
    return render_template('Home.html')