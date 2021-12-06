

from app import db


# InvalidRequestError: Table 'users' is already defined for this MetaData instance.
# Specify 'extend_existing=True' to redefine options and columns on an existing Table
# object.
# from app.models import BaseModel

# from typing import TypeVar, Type, Tuple

# BaseModelChild = TypeVar("BaseModelChild", bound="BaseModel")

class Database:

	@staticmethod
	# def add(model: Type[BaseModelChild]):
	def add(model):
		try:
			# db.create_all()
			db.session.add(model)
			db.session.commit()
			return True
		except BaseException as error:
			return False
