
# https://pythonhosted.org/Flask-MongoAlchemy/#api

from rich.traceback import install
install(show_locals=False)


from flask import Flask
miniapp = Flask(__name__)

from flask_mongoalchemy import MongoAlchemy
db = MongoAlchemy()

from app.credentials import Credentials
miniapp.config["MONGOALCHEMY_DATABASE"] = Credentials.MONGODB_DATABASE
# note that the db is not there
miniapp.config["MONGOALCHEMY_CONNECTION_STRING"] = Credentials.MONGODB_CONNECTION_STRING

db.init_app(app=miniapp)

# from mongoalchemy.document import Document

Document = db.Document


class Product(Document):
  name = db.StringField()
  price = db.FloatField()
  # brand = db.StringField()

  # nu merge sa ai init la asa ceva ca da eroare
  # def __init__(self, name, price):
  #   self.name = name
  #   self.price = price
    # self.brand = brand



class Author(Document):
  name = db.StringField()


class Book(Document):
  title = db.StringField()
  author = db.DocumentField(Author)
  year = db.IntField()


# # masline = Product("masline", "123.123", "masline")
# # masline.save()

a = Author(name="Andrew")
a.save()

from random import randint
newp = Product(name="asdasdasd", price=123.123)
print(type(newp))
print(type(newp._session))
print("save" in dir(newp._session))
newp.save()
