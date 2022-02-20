
from flask import Blueprint, render_template,session,redirect,request
from utilities.db.users import *
from utilities.db.classes import *


# catalog blueprint definition
Classes = Blueprint('Classes', __name__, static_folder='static', static_url_path='/Classes', template_folder='templates')


# Routes
@Classes.route('/Classes')
def classes_index():
    return render_template('Classes.html')

@Classes.route('/form1_classes',methods=['GET'])
def reg_to_class():
    if session['user_name']:
        subject = request.args.get('class_name')
        date = request.args.get('class_date')
        hours = request.args.get('class_time')

        if class_.is_available(subject,date,hours):
            user_email= session['user_email']
            class_.insert_to_participents_in_class(user_email,subject,date,hours)
            return render_template('Classes.html', msg='success_msg')
        else:
            return render_template('Classes.html', msg='error')
    else:
        return render_template('Classes.html', msg='sign_in')

@Classes.route('/form2_classes',methods=['GET'])
def class_contact():
        fullname = request.args.get('fullname')
        phone = request.args.get('phone')
        class_.add_to_class_contact(fullname,phone)
        return render_template('Classes.html', msg='success_msg_class_contact')



