from flask import Blueprint, render_template,session,redirect,request
from utilities.db.contact import *

# catalog blueprint definition
Contact = Blueprint('Contact', __name__, static_folder='static', static_url_path='/Contact', template_folder='templates')


# Routes
@Contact.route('/Contact')
def index():
    return render_template('Contact.html')

@Contact.route('/form_contact_us',methods=['GET'])
def class_contact():
        message = request.args.get('subject')
        contact.insert_message_to_contact_us(message)
        return render_template('Contact.html', msg='success_msg')




