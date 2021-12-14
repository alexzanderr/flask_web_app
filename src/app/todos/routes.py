"""
	# type: ignore
	type ignore is to tell LSP-pyright to ignore the line
	because something it thinks that there are errors, but actually at runtime there are not
"""

from json import dumps
from flask import render_template
from flask import Blueprint
from flask import request
from flask import url_for
from flask import redirect


# mongo db client stuff
from ..mongodb_client import mongodb
from ..mongodb_client import CollectionInvalid
from ..mongodb_client import ObjectId
from ..mongodb_client import collection_exists
from ..mongodb_client import get_db_name
from ..mongodb_client import collection_create
from ..mongodb_client import get_collection
from ..mongodb_client import create_or_get_collection
from ..routes_utils import json_response

from string import ascii_letters
from random import choice, randint
from datetime import datetime
import hashlib


todos = Blueprint(
	"todos",
	__name__,
	url_prefix="/todos",
	# not working
	# template_folder="templates/todos"
)
# document template
# todo = {
#     text: 'yeaaah',
#     timestamp: 1639492801.10111,
#     datetime: '14.12.2021-16:40:01',
#     completed: false
# }
todos_collection_name = "todos"
todos_collection = create_or_get_collection(todos_collection_name)


# document template
# user = {
# 	"username": "alexzander",
# 	"password": "37djw7dh237dh2yudhja1721hg2", # hashed
# 	"eamil": "alexxander18360@gmail.com",
# 	"creation_timestamp": datetime.timestamp(datetime.now()),
# 	"creation_datetime": datetime.now().strftime("%d.%m.%Y-%H:%M:%S")
# }
users_collection_name = "users"
users_collection = create_or_get_collection(users_collection_name)

# ('_id', 1)]},
# 'username_1': {'v': 2, 'key': [('username', 1)], 'unique': True}}

users_unique_keys = [{
	"name": "username",
	"exists": False
}]
for _, value in users_collection.index_information().items():
	for unique_key in value["key"]:
		for users_unique_key in users_unique_keys:
			if unique_key[0] == users_unique_key["name"]:
				users_unique_key["exists"] = True


for users_unique_key in users_unique_keys:
	if not users_unique_key["exists"]:
		users_collection.create_index([
			(users_unique_key["name"], 1)
		], unique=True)


# users_collection.create_index([("username", 1)], unique=True)


@todos.route("/")
def todos_root():
	# TODO
	# add authentication with accounts

	todos_collection = get_collection(todos_collection_name)
	todo_list = todos_collection.find()
	return render_template("todos/index.html", todo_list=todo_list)


def hash_password(password: str):
	# deci input pentru sha256 trebuie sa fie bytes
	return hashlib.sha256(password.encode()).hexdigest()


def validate_password(username: str, password: str):
	_user = users_collection.find_one({"username": username})
	_hashed_password = hash_password(password)
	return _user["password"] == _hashed_password  # type: ignore


@todos.route("/login", methods=["GET", "POST"])
def todos_login():
	"""
	Function: todos_login
	Summary: this function returns a login page with a form
	Returns: render_template("todos/login.html")
	"""
	method = request.method
	if method == "POST":
		# then create a new user in database and encrypt
		# the password
		# then redirect to /todos based on the content that the user has in todos database
		# return render_template ?
		pass
	else:
		# GET
		# if the user is already authenticated
		# then redirect to /todos page
		# else
		# return below
		return render_template("todos/login.html")


@todos.route("/register", methods=["GET", "POST"])
def todos_register():
	method = request.method
	if method == "POST":
		# then create a new user in database and encrypt
		# the password
		# then redirect to /todos based on the content that the user has in todos database
		# return render_template ?
		username = request.form["username"]
		email = request.form["email"]
		password = request.form["password"]
		password_check = request.form["password-check"]
		try:
			remember = request.form["remember"]
			if remember == "on":
				remember = True
		except KeyError:
			remember = False
		return {
			"username": username,
			"email": email,
			"password": password,
			"password-check": password_check,
			"remember": remember
		}, 200
	else:
		# GET
		# if the user is already authenticated
		# then redirect to /todos page
		# else
		# return below
		return render_template("todos/register.html")


@todos.route("/mongo/add", methods=["POST"])
def mongo_add():
	todos_collection.insert_one({
		"text": request.form["text"],
		"timestamp": datetime.timestamp(datetime.now()),
		"datetime": datetime.now().strftime("%d.%m.%Y-%H:%M:%S"),
		"completed": False
	})

	# return dict(todo), {
	# 	"Refresh": "1; url={}".format(url_for("todos"))
	# }
	return redirect("/todos")


@todos.route("/mongo/complete/<oid>")
def mongo_complete(oid):
	requested_todo = todos_collection.find_one({
		"_id": ObjectId(oid)
	})
	completed = True
	if requested_todo["completed"]:  # type: ignore
		completed = False

	todos_collection.update_one(
		requested_todo,
		{"$set": {"completed": completed}})

	# todos_collection.replace_one(requested_todo, {"something": "else"})

	# 61b6247e165b109454a32c1b
	# 61b6247e165b109454a32c1b

	return redirect("/todos")


@todos.route("/mongo/delete/<oid>")
def mongo_delete(oid):
	requested_todo = todos_collection.find_one({
		"_id": ObjectId(oid)
	})
	todos_collection.delete_one(requested_todo)
	return redirect(url_for("todos"))


@todos.route('/mongo/delete/all')
def mongo_delete_all():
	todos_collection.delete_many({})
	return redirect(url_for('todos'))

# @todos.route("/", methods=['POST'])
# @todos.route("/<component_name>", methods=['POST'])
# def graphql_query(component_name="app"):
# 	return str(component_name)


todos_api = Blueprint(
	"todos_api",
	__name__,
	url_prefix="/todos/api")


@todos_api.route("/")
def todos_api_root():
	return {"message": "salutare"}, 200


@todos_api.route("/mongo/add", methods=["POST"])
def todos_api_mongo_add():
	json_from_request = request.get_json()

	todo = {
		"text": json_from_request["text"],  # type: ignore
		"timestamp": datetime.timestamp(datetime.now()),
		"datetime": datetime.now().strftime("%d.%m.%Y-%H:%M:%S"),
		"completed": False
	}
	todos_collection.insert_one(todo)
	# the above function insert a _id key

	todo["oid"] = str(todo["_id"])
	del todo["_id"]

	return json_response(todo, 200)


# PATCH request
# The PATCH method applies partial modifications to a resource
# meaning that in this case partial mods are todo completed == true
@todos_api.route("/mongo/complete/<oid>", methods=["PATCH"])
def todos_api_mongo_complete(oid):
	requested_todo = todos_collection.find_one({
		"_id": ObjectId(oid)
	})
	completed = True
	if requested_todo["completed"]:  # type: ignore
		completed = False

	todos_collection.update_one(
		requested_todo,
		{"$set": {"completed": completed}}
	)
	requested_todo["oid"] = str(requested_todo["_id"])  # type: ignore
	requested_todo["completed"] = completed  # type: ignore

	del requested_todo["_id"]  # type: ignore

	return json_response(requested_todo, 200)  # type: ignore


# TODO add the oid in the post data body
# instead of making it an url, so that no one can see
# te oid
@todos_api.route("/mongo/delete/<oid>", methods=["DELETE"])
def todos_api_mongo_delete(oid):
	requested_todo = todos_collection.find_one({
		"_id": ObjectId(oid)
	})
	todos_collection.delete_one(requested_todo)
	requested_todo["oid"] = str(requested_todo["_id"])  # type: ignore
	del requested_todo["_id"]  # type: ignore

	return json_response(requested_todo, 200)  # type: ignore


@todos_api.route("/register", methods=["POST"])
def todos_api_register():
	json_from_request: dict = request.get_json() # type: ignore
	username = json_from_request["username"]
	email = json_from_request["email"]
	password = json_from_request["password"]
	password_check = json_from_request["password_check"]
	remember_me = json_from_request["remember_me"]

	# validation process comes
	# TODO add regex validation

	return {
		"username": username,
		"email": email,
		"password": password,
		"password_check": password_check,
		"remember_me": remember_me
	}, 200

