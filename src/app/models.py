
from app import db

class User(db.Model):
    __id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String, unique=True, nullable=False)
    email = db.Column(db.String, unique=True, nullable=False)


# db.session.add(User(name="Flask", email="example@example.com"))
# db.session.commit()

# users = User.query.all()