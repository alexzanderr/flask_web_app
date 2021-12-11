

from app import mongodb, Document


# https://github.com/dayorbyte/MongoAlchemy/blob/master/mongoalchemy/fields/fields.py
class Product(Document):
  name = mongodb.StringField()
  price = mongodb.FloatField()


class Order(Document):
	name = mongodb.StringField()
	products = mongodb.DocumentField(Product)


def NewProduct(name: str, price: float):
	p = Product(name=name, price=price)
	return p

# class Book(Document):
#   title = mongodb.StringField()
#   author = mongodb.DocumentField(Author)
#   year = mongodb.IntField()
