from flask import Blueprint, render_template
from utilities.db.question import *

# Question blueprint definition
Question = Blueprint('Question', __name__, static_folder='static', static_url_path='/Question', template_folder='templates')


# Routes
@Question.route('/Question')
def index():
    res = Questions.get_all_question()
    return render_template('Question.html',entries = res)
