

from flask import render_template
from flask import Blueprint
from random import choice, randint
from string import ascii_letters, digits
from app import db
from .models import AuthToken
import sqlalchemy
from flask import request
from ..database_manager import Database





def generate_random_token():
	return "".join([choice(ascii_letters + digits) for _ in range(30)])


api = Blueprint("api", __name__)


__api = "/api"

@api.route(__api)
def home():
	return "not good"

@api.route(__api + "/asd")
def asd():
	return "asd"

# TODO sa nu dai commit pentru trebuie sa ascunzi postgres user

@api.route(__api + "/login", methods=["GET"])
def login():
	# TODO make the token expire in 5 minutes
	url_token = request.args.get("token")
	db_token = AuthToken.query.filter_by(token=url_token).first()
	if db_token is None:
		return {
			"code": "403",
			"message": "Forbidden"
		}

	return {
		"code": 200,
		"message": f"you are now logged in with token: {url_token}"
	}
	# return f"token:{url_token} you are now logged in"



@api.route(__api + "/new-token")
def generate_token():
	new_token = generate_random_token()
	try:
		token = AuthToken(new_token)
		Database.add(token)
		return f"new token: {new_token}"

	# except sqlalchemy.exc.ProgrammingError as error:
	# 	db.create_all()
	# 	db.session.add(token)

	# 	# pyperclip.copy(new_token)

	# 	return f"table auth_tokens didnt existed until now; new token created: {new_token}"


	except sqlalchemy.exc.IntegrityError as error:
		return {
			"code": "500",
			"error-type": "database error",
			"error-message": str(error),
			"client-message": {
				"message": "token already existent",
				"token": new_token
			}
		}