

from src.app import app

# TODO
# implement model view controller
# meaning:
# in a request
# get data from sql database based on the request you got
# and return the data from db as a html page



if __name__ == '__main__':
	# the auto browser refresh doesnt work
	# server = Server(app.wsgi_app)
	# server.serve(port=5555)
	app.run(debug=True)
