

from flask_pymongo import PyMongo
from pymongo.errors import CollectionInvalid
from pymongo.errors import InvalidOperation
from bson.objectid import ObjectId

mongodb = PyMongo()


def get_db_name():
	return mongodb.db.name # type: ignore

def collection_exists(name):
	return name in mongodb.db.list_collection_names() # type: ignore

def collection_create(name: str):
	"""
		Function: collection_create
		Summary: creates a mongo collection
		Examples: result = collection_create("todos")
		Attributes:
			@param (name):str
		Returns: True, if created successfully or raises CollectionInvalid error because the collection already was in database
	"""
	if collection_exists(name):
		raise CollectionInvalid(
			f"collection with name: '{name}' already exists in database: '{get_db_name()}'")


	mongodb.db.create_collection(name) # type: ignore
	return True


def get_collection(name: str):
	if not collection_exists(name):
		raise CollectionInvalid(
			f"collection with name: {name} doesnt exist; "
			"use this code to create collection: "
			"'collection_create(\"{name}\")'"
		)

	return mongodb.db.get_collection(name) # type: ignore


def create_or_get_collection(name: str):
	# if it doesnt exist, then create
	if not collection_exists(name):
		result = collection_create(name)
		if not result:
			raise ValueError(f"could not create collection: {name}")

	# then return the collection
	return get_collection(name)

