

from app import socketio
from flask_socketio import send


@socketio.on("message")
def handle_message(message):
    send(message, broadcast=True)