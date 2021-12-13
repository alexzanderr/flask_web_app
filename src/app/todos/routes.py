

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
from ..routes_utils import json_response

from string import ascii_letters
from random import choice, randint
from datetime import datetime


todos = Blueprint(
	"todos",
	__name__,
	url_prefix="/todos",
	# not working
	# template_folder="templates/todos"
)
todos_collection_name = "todos"
if not collection_exists(todos_collection_name):
	result = collection_create(todos_collection_name)
	if not result:
		raise ValueError(f"could not create collection: {todos_collection_name}")


@todos.route("/")
def todos_root():
	todos_collection = get_collection(todos_collection_name)
	todo_list = todos_collection.find()
	return render_template("todos/index.html", todo_list=todo_list)


@todos.route("/help")
def help():
	return "you just got some help"


@todos.route("/mongo/list")
# TODO find out how to list all
def list_mongo():
	items = []
	testing_collection = mongodb.db.get_collection("testing")
	for item in testing_collection.find():
		without_id = {}
		for key, v in item.items():
			if key != "_id":
				without_id.update({key: v})

		items.append(without_id)
	return dumps(items, indent=4)
	# return str(dir(testing_collection.find({"kymycJScNC" : 9261})))




@todos.route("/mongo/add", methods=["POST"])
def mongo_add():
	todos_collection = get_collection(todos_collection_name)

	todo = {
		"text": request.form["text"],
		"timestamp": datetime.timestamp(datetime.now()),
		"datetime": datetime.now().strftime("%d.%m.%Y-%H:%M:%S"),
		"completed": False
	}
	todos_collection.insert_one(todo)

	# return dict(todo), {
	# 	"Refresh": "1; url={}".format(url_for("todos"))
	# }
	return redirect(url_for("todos"))







@todos.route("/mongo/complete/<oid>")
def mongo_complete(oid):
	todos_collection = get_collection(todos_collection_name)
	requested_todo = todos_collection.find_one({
		"_id": ObjectId(oid)
	})
	completed = True
	if requested_todo["completed"]: # type: ignore
		completed = False

	todos_collection.update_one(
		requested_todo,
		{"$set": { "completed": completed }})

	# todos_collection.replace_one(requested_todo, {"something": "else"})

	# 61b6247e165b109454a32c1b
	# 61b6247e165b109454a32c1b

	return redirect(url_for("todos"))


@todos.route("/mongo/delete/<oid>")
def mongo_delete(oid):
	todos_collection = get_collection(todos_collection_name)
	requested_todo = todos_collection.find_one({
		"_id": ObjectId(oid)
	})
	todos_collection.delete_one(requested_todo)
	return redirect(url_for("todos"))


@todos.route('/mongo/delete/all')
def mongo_delete_all():
	todos_collection = get_collection(todos_collection_name)
	todos_collection.delete_many({})
	return redirect(url_for('todos'))

# @todos.route("/", methods=['POST'])
# @todos.route("/<component_name>", methods=['POST'])
# def graphql_query(component_name="app"):
# 	return str(component_name)



