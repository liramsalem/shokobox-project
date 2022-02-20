from flask import Blueprint, render_template,request,session,redirect
from utilities.db.customized import *
from utilities.db.products import *


# catalog blueprint definition
CustomizedCake = Blueprint('CustomizedCake', __name__, static_folder='static', static_url_path='/CustomizedCake', template_folder='templates')


# Routes
@CustomizedCake.route('/CustomizedCake', methods=['GET','POST'])
def index():
    gallery_res= Products.get_5_gallery_cakes()
    shape_res = Customized_Cakes.get_all_shapes()
    extra_res = Customized_Cakes.get_all_extras()
    flavor_res = Customized_Cakes.get_all_flavors()
    language_res = Customized_Cakes.get_all_languages()
    size_res = Customized_Cakes.get_all_sizes()
    if request.method == 'POST':
        shape = request.form.get("shape")
        extra = request.form.get("extra")
        taste = request.form.get("taste")
        caption = request.form.get("caption")
        size = request.form.get("size")
        comment = request.form.get("comment")
        if not shape or not extra or not taste or not caption or not size:
            return render_template('CustomizedCake.html', msg='error',shape_entries = shape_res,extra_entries =extra_res ,flavor_entries =flavor_res,language_entries =language_res,size_entries =size_res,gallery_entries=gallery_res)
        Customized_Cakes.insert_cus_product(session['user_email'], 4, shape, extra, taste, caption, size, comment)
        return redirect('/ShoppingCart')

    return render_template('CustomizedCake.html', shape_entries = shape_res,extra_entries =extra_res ,flavor_entries =flavor_res,language_entries =language_res,size_entries =size_res,gallery_entries=gallery_res)

