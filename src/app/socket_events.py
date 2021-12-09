

# from app import socketio
from flask_socketio import send, SocketIO, leave_room

sc = SocketIO(cors_allowed_origins="*")

from random import choice
from string import ascii_letters

users = []
connected_users = 0

@sc.on("logmein")
def connect_to_client(message):
	global connected_users

	connected_users += 1
	username = "Guest" + str(connected_users)
	if username not in users:
		users.append(username)
		send(
			"user: {} just connected".format(username),
			broadcast=True
		)
		sc.emit("usertype", username)

	else:
		send(
			"user: {} already connected!".format(username),
			broadcast=True
		)


@sc.on("message")
def handle_message(message):
	send(message, broadcast=True)