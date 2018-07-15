from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField, BooleanField
from wtforms.validators import Length, Email, EqualTo, Required
from simpledu.models import db, User
from wtforms import ValidationError
import re


class RegisterForm(FlaskForm):
    username = StringField('Username', validators=[Required(), Length(3, 24)])
    email = StringField('Email', validators=[Required(), Email()])
    password = PasswordField('Password', validators=[Required(), Length(6, 24)])
    repeat_password = PasswordField('Password again', validators=[Required(), EqualTo('password')])
    submit = SubmitField('Submit')

    def validate_username(self, field):
        # print(type(self.username.data))
        #/^[0-9a-zA-Z]+$/
        # print(self.username.data)
        pattern='^[0-9a-zA-Z]+$'
        usernamer_check=re.match(pattern, self.username.data)
        print(usernamer_check)
        if usernamer_check==None:
            raise ValidationError('only digit and charater are allowed')

        if User.query.filter_by(username=field.data).first():
            raise ValidationError('用户名已经存在')

    def validate_email(self, field):
        if User.query.filter_by(email=field.data).first():
            raise ValidationError('邮箱已经存在')

    def create_user(self):
        user = User()
        user.username = self.username.data
        user.email = self.email.data
        user.password = self.password.data
        db.session.add(user)
        db.session.commit()
        return user


class LoginForm(FlaskForm):
    # email = StringField('Email', validators=[Required(), Email()])
    username = StringField('Username', validators=[Required(), Length(3, 24)])
    password = PasswordField('Password', validators=[Required(), Length(6, 24)])
    remember_me = BooleanField('Remember me')

    def validate_username(self, field):
        if field.data and not User.query.filter_by(username=field.data).first():
            raise ValidationError('用户未注册')

    # def validate_email(self, field):
    #     if field.data and not User.query.filter_by(email=field.data).first():
    #         raise ValidationError('邮箱未注册')

    def validate_password(self, field):
        user = User.query.filter_by(username=self.username.data).first()
        if user and not user.check_password(field.data):
            raise ValidationError('密码错误')
    submit = SubmitField('Submit')