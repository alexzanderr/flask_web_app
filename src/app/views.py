

# python3
from string import digits
from random import randint
from time import time, sleep
from datetime import datetime
import logging
from flask import has_request_context, request
from flask.logging import default_handler

# flask package
from flask import Flask
from flask import request
from flask import Blueprint
# https://stackoverflow.com/questions/16994174/in-flask-how-to-access-app-logger-within-blueprint
from flask import current_app
from flask import render_template
from flask import url_for, redirect
# this is actually a very good way to access app

# werkzeug
from werkzeug.utils import import_string


# sqlalchemy
import sqlalchemy

# flask socketio
from flask_socketio import SocketIO, send

# current project
# ./src/app/models.py
from .models import db
from .models import User
from .models import Address
from .models import Person
from .models import YTUser
from .models import YTChannel
from .models import subs
from .models import Login
# ./src/app/__init__.py
from app import db
# ./src/app/database_manager.py
from .database_manager import Database
from .credentials import Credentials


class RequestFormatter(logging.Formatter):
	def format(self, record):
		if has_request_context():
			record.url = request.url
			record.remote_addr = request.remote_addr
		else:
			record.url = None
			record.remote_addr = None

		return super().format(record)


view = Blueprint("views", __name__)

# formatter = RequestFormatter(
#     '[%(asctime)s] %(remote_addr)s requested %(url)s\n'
#     '%(levelname)s in %(module)s: %(message)s'
# )
# default_handler.setFormatter(formatter)
# default_handler.setLevel(logging.INFO)
# logging.basicConfig(filename='src/logs/info.log',level=logging.INFO)

def generate_random_token():
	return "".join([choice(ascii_letters + digits) for _ in range(10)])

def get_all_routes():
	routes = []
	for rule in current_app.url_map.iter_rules():
		try:
			if rule.endpoint != 'static':
				if hasattr(current_app.view_functions[rule.endpoint], 'import_name'):
					import_name = current_app.view_functions[rule.endpoint].import_name
					obj = import_string(import_name)
					routes.append({rule.rule: "%s\n%s" % (",".join(list(rule.methods)), obj.__doc__)})
				else:
					routes.append({rule.rule: current_app.view_functions[rule.endpoint].__doc__})
		except Exception as exc:
			routes.append({rule.rule:
						   "(%s) INVALID ROUTE DEFINITION!!!" % rule.endpoint})
			route_info = "%s => %s" % (rule.rule, rule.endpoint)
			current_app.logger.error("Invalid route: %s" % route_info, exc_info=True)
	return routes


@view.route('/all', methods=['GET'])
def routes_info():
	return {"code":200, "data": get_all_routes()}


@view.route("/")
def index():
	# return "livereload"
	login = Login(datetime.now(), randint(0, 10000))
	Database.add(login)
	current_app.logger.info("some errors")


	all_routes = get_all_routes()
	# print(all_routes)
	filtered_routes = [list(route.keys())[0] for route in all_routes]

	return render_template("index.html", routes=filtered_routes)
	# return "asd"




@view.route("/home")
@view.route("/index")
@view.route("/homesweethome")
def redirect_to_index():
	current_app.logger.info("something")
	return redirect(url_for("index"))


# this is not working
# @view.route("/new-route")
# def create_new_route_at_runtime():

# 	route_name = "/random"
# 	@current_app.route(route_name)
# 	def custom_route():
# 		return "hello world im created at runtime"
# 	return "created new-route"


@view.route("/chat")
def sock():
	# current_app.logger.info("some errors")
	return render_template("socket.html")


@view.route("/stat")
def stat():
	return url_for("static", filename="ajax-loader.gif")


def lazy_loading():
	for i in range(3):
		sleep(1)

@view.route("/grafana")
def load_grafana_ui():
	return render_template("grafana.html", api_key=Credentials.GRAFANA_API_KEY)


@view.route("/snippet")
def load_snippet_html():
	return render_template("snippet.html")

# @view.route('/<path:file_path>')
# def static_file(file_path):
#     return view.send_static_file(file_path)

@view.route("/form", methods=["GET"])
def form():
	# query = request.form['anything']
	# lazy_loading()
	return render_template("loading.html")


@view.route("/form", methods=["POST"])
def form_post():
	query = request.form['anything']
	start_time = time()
	lazy_loading()
	diff = int(abs(start_time - time()))
	return render_template("done.html", result=query, time_diff=diff)


@view.route("/get/<int:var>")
def get(var):
	return f"render my template {var}"





@view.route("/post/<string:something>")
def post(something):
	return str(something)

database = {
	"tea": "pot",
	"dog": "cat",
	"simple": "hard",
	"ican": "dothis"
}

@view.route("/mvc/<string:controller>")
def mvc(controller: str):
	return render_template(
		"mvc.html",
		results_name=controller,
		result=database[controller])

dashboard_data = [
	"items",
	"items1",
	"items2",
	"items3",
	"items4",
	"items56",
]

@view.route("/dashboard")
def dashboard():
	return render_template("dashboard.html", data=dashboard_data)


@view.route("/json")
@view.route("/JSON")
def return_json_response():
	data = {
		"data": 123,
		"name": "Andrew",
		"some_list": [
			{
				"name": "item",
				"url": "https://stackoverflow.com/questions/15008204/how-to-check-postgres-user-and-password"
			},
			{
				"name": "item1",
				"url": "https://blog.theodo.com/2017/03/developping-a-flask-web-app-with-a-postresql-database-making-all-the-possible-errors/"
			}
		]
	}
	return data


# @view.route("/submit", methods=["GET", "POST"])
# def register_user():
# 	if request.mehtod == "POST":



from random import choice, randint
from string import ascii_letters

def random_string(length: int):
	return "".join([choice(ascii_letters) for _ in range(length)])


@view.route("/new-user")
def add_new_user():
	__username=random_string(10),
	__password=random_string(20),
	__name=random_string(10),
	__age=randint(1, 100000),
	__address=random_string(20)

	# check unicity for username
	check = User.query.filter_by(username=__username).first()
	while check is not None:
		# reload until unique
		__username=random_string(10),
		check = User.query.filter_by(username=__username).first()


	# check unicity for address
	check = User.query.filter_by(address=__address).first()
	while check is not None:
		# reload until unique
		__address=random_string(20),
		check = User.query.filter_by(address=__address).first()

	# check unicity for address
	check = User.query.filter_by(age=__age).first()
	while check is not None:
		# reload until unique
		__age=randint(0, 1000000),
		check = User.query.filter_by(age=__age).first()

	user = User(
		username=__username,
		password=__password,
		name=__name,
		age=__age,
		address=__address,
	)
	db.session.add(user)
	return render_template("users.html", response=user.to_json())





@view.route("/users")
def list_users():
	results = db.session.execute("select * from users").fetchall()

	lines = "<ul>"
	for line in results:
		lines += "<li>" + str(line) + '</li>'
	lines += "</ul>"
	return lines


@view.route("/users2")
def list_users2():
	results = User.query.filter_by(username="missing").first_or_404(description="there is no data with user missing")
	return results

	if results is None:
		return "no username missing in db"
	lines = "<ul>"
	for line in results:
		lines += "<li>" + str(line) + '</li>'
	lines += "</ul>"
	return lines


@view.route("/new-person/<string:name>")
def add_new_person(name: str):
	__person = Person(name=name)

	address1 = Address(
	  "justpythonmailtest@gmail.com")
	address2 = Address(
	  "aiosdbjfasidbfg@yahoo.com")
	for address in [address1, address2]:
	  address.person = __person

	db.session.add(__person)
	db.session.add(address1)
	db.session.add(address2)

	return f"person: {name} added to database"


@view.route("/many")
def many_to_many_example():
	names = [
		"Senya",
		"Carmen",
		"Dragos"
	]
	channel_names = [
		"learn programming",
		"how to money",
		"someting",
		"mrs universe"
	]
	users = [YTUser(name=name) for name in names]
	channels = [YTChannel(name=name) for name in channel_names]

	for user in users:
		db.session.add(user)

	for user, channel in zip(users, channels):
		db.session.add(channel)
		channel.subscribers.append(user)
		# user.subscriptions.append(channel)

	return "<200>"


@view.route("/many/get")
def get_many_relations():
	channel1 = YTChannel.query.filter_by(
		name="learn asd").all()

	if channel1 == []:
		return {'status':'01', 'description': 'user not found'}
		return "database response is not OOK"


	return "".join([sub.name for chann in channel1 for sub in chann.subscribers])

	return render_template(
		"subscribers.html",
		channel_name=channel1.name,
		subs=channel1.subscribers
	)



# https://stackoverflow.com/questions/2136739/error-handling-in-sqlalchemy
@view.route("/error")
def error():
	try:
		user = User(
			"anddrew", "asdasd", "asdasdasd", 100, "asdasd"
		)
		db.session.add(user)
	except sqlalchemy.exc.IntegrityError as error:
		return {
			"code": "500",
			"error-type": "database error",
			"error-message": str(error),
			"client-message": {
				"message": "you cannot add this user",
				"user": user.to_json()
			}
		}

	return "200"