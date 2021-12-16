"""
    now module docstring is not missing anymore
"""

from rich.traceback import install
from flask_socketio import SocketIO
# from livereload import Server
from src.app import create_app

install(show_locals=False)

# https://github.com/nathanwright1242/flask_livereload_example/issues/1


# implement model view controller
# meaning:
# in a request
# get data from sql database based on the request you got
# and return the data from db as a html page


if __name__ == '__main__':
    # it works but doesnt reload the page after save
    flask_application = create_app()

    # https://github.com/pallets/flask/issues/3057
    # he says that its not working because
    # maybe its because of the Blueprint design pattern
    # maybe if i dont have blueprints it will work?
    # live_server = Server(flask_application.wsgi_app)
    # live_server.watch('src/*')
    # live_server.serve()

    # setting port manually doesnt work
    # create_app().run(debug=True, port=5555)
    # flask_application.run(debug=True, port=5555)

    # run for websockets
    socketio = SocketIO(flask_application)
    socketio.run(flask_application, host="localhost", port=5555)
