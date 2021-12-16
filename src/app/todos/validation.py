
# from ..mongodb_client import users_collection

from ..mongodb_client import get_collection


import re

username_regex = re.compile("[a-zA-Z0-9_]+")


def validate_username(username: str):

	if not isinstance(username, str):
		return {
			"passed": False,
			"error_message": "username is not a string"
		}

	len_username = len(username)
	if not (5 < len_username < 21):
		return {
			"passed": False,
			"error_message": "username must be between 6 and 20 characters"
		}

	if not username_regex.fullmatch(username):
		return {
			"passed": False,
			"error_message": "username must contain only alpha numeric values and underscore"
		}

	# deci testele au mers pana acum pentru
	# ca era mongo db involved aici
	if get_collection("users").find_one({ "username": username }):
		return {
			"passed": False,
			"error_message": "username already exists"
		}


	return {
		"passed": True,
		"error_message": None
	}


password_regex = re.compile(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})")


def validate_password(password: str):

	if not isinstance(password, str):
		return {
			"passed": False,
			"error_message": "password is not a string"
		}

	len_password = len(password)
	if not (9 < len_password < 31):
		return {
			"passed": False,
			"error_message": "password must be between 10 and 30 characters"
		}

	if not password_regex.match(password):
		return {
			"passed": False,
			"error_message": "password must contain alpha, digits, punctuation and uppercase"
		}

	return {
		"passed": True,
		"error_message": None
	}


email_regex = re.compile(r"[a-zA-Z0-9-.]+@[a-zA-Z0-9-.]+")


def validate_email(email: str):
	if not isinstance(email, str):
		return {
			"passed": False,
			"error_message": "password is not a string"
		}

	if "@" not in email:
		return {
			"passed": False,
			"error_message": "email doesnt contain '@'"
		}

	first, second = email.split("@")
	if not (5 <= len(first) <= 50):
		return {
			"passed": False,
			"error_message": "username from email must be between 5 and 50"
		}

	if not (5 <= len(second) <= 15):
		return {
			"passed": False,
			"error_message": "domain name from email must be between 5 and 15"
		}

	if not email_regex.fullmatch(email):
		return {
			"passed": False,
			"error_message": "regex resulted that email is invalid"
		}

	return {
		"passed": True,
		"error_message": None
	}


def validate_password_check(password, password_check):
	if password_check != password:
		return {
			"passed": False,
			"error_message": "password doesnt match password check"
		}

	return {
		"passed": True,
		"error_message": None
	}
