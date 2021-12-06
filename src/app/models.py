
# from app import db


import json
from flask_sqlalchemy import SQLAlchemy

from app import db

class BaseModel(db.Model):
    __abstract__ = True


class Login(BaseModel):
    __tablename__ = "logins"
    __id = db.Column("id", db.Integer, primary_key=True)
    __time = db.Column("time", db.DateTime, unique=True)
    value = db.Column("value", db.Integer)

    def __init__(self, time, value):
        self.__time = time
        self.value = value


class User(BaseModel):
    __tablename__ = "users"
    __id = db.Column("id", db.Integer, primary_key=True)
    username = db.Column(db.String(20), unique=True)
    password = db.Column(db.String(30))
    name = db.Column(db.String(40))
    age = db.Column(db.Integer)
    address = db.Column(db.String(100), unique=True)

    def __init__(self, username, password, name, age, address) -> None:
        self.username = username
        self.password = password
        self.name = name
        self.age = age
        self.address = address

    def to_json(self) -> dict:
        return {
            "username": self.username,
            "password": self.password,
            "name": self.name,
            "age": self.age,
            "address": self.address
        }

    def __str__(self) -> str:
        return json.dumps(self.to_json())

# One-to-Many Relationships
class Person(BaseModel):
    __tablename__ = "persons"

    __id = db.Column("id", db.Integer, primary_key=True)
    name = db.Column(db.String(50), nullable=False)
    # this is a pointer to another table
    addresses = db.relationship(
        'Address',
        backref='person',
        lazy=True)

    def __init__(self, name) -> None:
        self.name = name


class Address(BaseModel):
    __tablename__ = "addresses"

    __id = db.Column("id", db.Integer, primary_key=True)
    email = db.Column(db.String(120), nullable=False)
    person_id = db.Column(
        db.Integer,
        # this foreign key name
        # MUST be the same as
        # parent's __tablename__
        db.ForeignKey('persons.id'),
        nullable=False)

    def __init__(self, email) -> None:
        self.email = email


# many to many relationship
# in this case we need a connection table
subs = db.Table(
    "subs",
    db.Column(
        "yt_user_id",
        db.Integer,
        db.ForeignKey("ytusers.id")
    ),
    db.Column(
        "yt_channel_id",
        db.Integer,
        db.ForeignKey("ytchannels.id")
    )
)

class YTUser(BaseModel):
    __tablename__ = "ytusers"
    __id = db.Column("id", db.Integer, primary_key=True)
    name = db.Column("name", db.String(20))

    # with this you add subscribers attribute to the YTChannel class
    subscriptions = db.relationship("YTChannel", secondary=subs, backref=db.backref("subscribers", lazy="dynamic"))

    def __init__(self, name):
        self.name = name


class YTChannel(BaseModel):
    __tablename__ = "ytchannels"
    __id = db.Column("id", db.Integer, primary_key=True)
    name = db.Column("name", db.String(20))

    # subscribers will be here with that above backref