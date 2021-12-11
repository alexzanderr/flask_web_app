

from flask import render_template, Blueprint
from ..mongodb_client import mongodb, CollectionInvalid

from string import ascii_letters
from random import choice, randint
from datetime import datetime


todos = Blueprint("todos", __name__, url_prefix="/todos")

@todos.route("/")
def todos_root():
	return "this is the root of /todos"


@todos.route("/help")
def help():
	return "you just got some help"




@todos.route("/mongo/list")
# TODO find out how to list all
def list_mongo():
  testing_collection = mongodb.db.get_collection("testing")
  return str(dir(testing_collection.find({"kymycJScNC" : 9261})))



@todos.route("/mongo/add")
def mongo_add():
  try:
    testing_collection = mongodb.db.create_collection("testing")
  except CollectionInvalid:
    # collection exists
    testing_collection = mongodb.db.get_collection("testing")

  for _ in range(5):
    testing_collection.insert_one({
    	"".join([choice(ascii_letters) for _ in range(10)]): randint(0, 10000),
    # 	"""
    # 		{ "_id" : ObjectId("61b4bcb898da5516ea364ce9"), "testing" : true }
				# { "_id" : ObjectId("61b4c15bc58d07cb2b6ae9b4"), "aqvEFuvlDg" : 1834 }
				# { "_id" : ObjectId("61b4c15bc58d07cb2b6ae9b5"), "xFCaVgGZDQ" : 478 }
				# { "_id" : ObjectId("61b4c15bc58d07cb2b6ae9b6"), "yeCqzzwRhM" : 1117 }
				# { "_id" : ObjectId("61b4c15bc58d07cb2b6ae9b7"), "ScgZqztzpY" : 3990 }
				# { "_id" : ObjectId("61b4c15bc58d07cb2b6ae9b8"), "rPQeNxijSt" : 8134 }
				# { "_id" : ObjectId("61b4c1b1c58d07cb2b6ae9b9"), "lKBNlRKlNI" : 9777 }
				# { "_id" : ObjectId("61b4c1b1c58d07cb2b6ae9ba"), "NPJHlHufSA" : 3004 }
				# { "_id" : ObjectId("61b4c1b1c58d07cb2b6ae9bb"), "QLkXIsaQVU" : 5751 }
				# { "_id" : ObjectId("61b4c1b1c58d07cb2b6ae9bc"), "hwJGRyOLhN" : 683 }
				# { "_id" : ObjectId("61b4c1b1c58d07cb2b6ae9bd"), "CjyFHozngt" : 9045 }
				# { "_id" : ObjectId("61b4c213c58d07cb2b6ae9be"), "IFIGQAduni" : 7262 }
				# { "_id" : ObjectId("61b4c213c58d07cb2b6ae9bf"), "ODiUlkEfzw" : 9358 }
				# { "_id" : ObjectId("61b4c213c58d07cb2b6ae9c0"), "HURyuJQRHD" : 8824 }
				# { "_id" : ObjectId("61b4c213c58d07cb2b6ae9c1"), "uSWdoidJZc" : 7532 }
				# { "_id" : ObjectId("61b4c213c58d07cb2b6ae9c2"), "kymycJScNC" : 9261 }

    # 	"""
    	# aparent nu merge sa adaugi cand deja sa facut strcutura
    	"datetime": datetime.now().strftime("%d.%m.%Y-%H:%M:%S"),
    	"inca_o_col": 123
    })

    # testing_collection.update_one


  return {"dir": dir(testing_collection.find())}


@todos.route("/", methods=['POST'])
@todos.route("/<component_name>", methods=['POST'])
def graphql_query(component_name="app"):
	return str(component_name)