

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
	return json.loads(get_request(client, "/api" + route))



def test_login(client):
	# for i in range(100000000):
	#     pass
	_json = get_json_from_request(client, "/login?token=JZ1QCOu9AeDOhZD7NYFa1qhCuazmP2")

	assert _json["code"] == 200
	assert _json["message"] == "you are now logged in with token: JZ1QCOu9AeDOhZD7NYFa1qhCuazmP2"