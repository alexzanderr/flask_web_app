

from app import db


class BaseModel(db.Model):
    __abstract__ = True


class AuthToken(BaseModel):
    __tablename__ = "auth_tokens"
    __id = db.Column("id", db.Integer, primary_key=True)
    token = db.Column(db.String(30), unique=True)

    def __init__(self, token: str):
    	self.token = token
