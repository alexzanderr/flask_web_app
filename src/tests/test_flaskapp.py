
"""
	docs for testing
	https://flask.palletsprojects.com/en/2.0.x/testing/
"""

import os
import tempfile
import pytest
import json

from app import create_app


@pytest.fixture
def client():
	db_fd, db_path = tempfile.mkstemp()
	app = create_app({'TESTING': True, 'DATABASE': db_path})

	with app.test_client() as client:
		# with app.app_context():
		#     init_db()
		yield client

	os.close(db_fd)
	os.unlink(db_path)


def get_request(client, route):
	return client.get(route).data.decode("utf-8")

def get_json_from_request(client, route):
	return json.loads(get_request(client, "/hello"))


def test_json_response(client):
	# for i in range(100000000):
	#     pass
	response = get_request(client, "/json")
	assert type(response) == str
	response_json = json.loads(response)
	assert type(response_json) == dict
	assert response_json["data"] == 123
	assert response_json["name"] == "Andrew"
	# assert response_json == {"data": 123, "name": "Andrew"}



# def test_login_logout(client):
#     """Make sure login and logout works."""

#     username = flaskr.app.config["USERNAME"]
#     password = flaskr.app.config["PASSWORD"]

#     rv = login(client, username, password)
#     assert b'You were logged in' in rv.data

#     rv = logout(client)
#     assert b'You were logged out' in rv.data

#     rv = login(client, f"{username}x", password)
#     assert b'Invalid username' in rv.data

#     rv = login(client, username, f'{password}x')
#     assert b'Invalid password' in rv.data
