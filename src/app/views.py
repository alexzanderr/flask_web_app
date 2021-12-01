
from . import app
from flask import render_template




@app.route("/")
@app.route("/home")
@app.route("/index")
@app.route("/homesweethome")
def index():
	return render_template("index.html")


@app.route("/get/<int:var>")
def get(var):
	return f"render my template {var}"




@app.route("/post/<string:something>")
def post(something):
	return str(something)

database = {
	"tea": "pot",
	"dog": "cat",
	"simple": "hard",
	"ican": "dothis"
}

@app.route("/mvc/<string:controller>")
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

@app.route("/dashboard")
def dashboard():
	return render_template("dashboard.html", data=dashboard_data)