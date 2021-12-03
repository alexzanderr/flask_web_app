

from src.app import create_app

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

	# setting port manually doesnt work
	# create_app().run(debug=True, port=5555)
	create_app().run(debug=True, port=5555)
