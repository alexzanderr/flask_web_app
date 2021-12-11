
from pymongo.database import Database
from pymongo import MongoClient
from app.credentials import Credentials


def test_mongo_uri():
	client: MongoClient = MongoClient(Credentials.MONGODB_DATABASE_URI)
	assert client != None
	users_table: Database = client["users"]

	assert users_table != None
	for item in users_table.find():
		assert item["age"] == 205
