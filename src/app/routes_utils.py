


def json_response(_dict: dict, status_code: int):
	return  _dict, status_code, \
			{"ContentType": "application/json"}