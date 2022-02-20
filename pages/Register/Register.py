from flask import Blueprint, render_template,session,redirect,request
from utilities.db.users import *


# catalog blueprint definition
Register = Blueprint('Register', __name__, static_folder='static', static_url_path='/Register', template_folder='templates')

# Routes
@Register.route('/Register')
def reg_index():
    return render_template('Register.html')


@Register.route('/Register_form',methods=['GET','POST'])
def register_form():
    if request.method == 'POST':
        user_email = request.form['email']
        Fname = request.form['firstnm']
        Lname = request.form['lastnm']
        phone = request.form['phone']
        password = request.form['psw']
        BirthDate = request.form['birthday']
        found = user.check_user_exists(user_email)
        if found:
            return render_template('Register.html', msg='error')
        else:
            if user.insert_user(user_email, Fname, Lname, phone, password,  BirthDate) >0:
                return render_template('SignIn.html')
            else:
                return('Home.html')

