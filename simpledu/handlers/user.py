from flask import Blueprint, render_template
from simpledu.models import User,Course

user = Blueprint('user', __name__, url_prefix='/user')

@user.route('/<user_name>')
def user_index(user_name):
    result=user_name
    user_item=User.query.filter_by(username=user_name).all()
    if len(user_item)<1:
        return render_template('404.html'), 404

    print(user_item[0].id)
    user_id=user_item[0].id
    print(user_item[0].username)
    # print(user_item.username)
    course_item=Course.query.filter_by(author_id=user_id).all()
    print(course_item[0].name)
    print(course_item[1].name)
    # return result
    return render_template('user.html', user_item=user_item,course_item=course_item)
