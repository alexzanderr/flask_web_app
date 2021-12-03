
from rich.traceback import install
install(show_locals=False)

import os
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
# this is not yours, you can comment this
# trebuie sa fie .crendetials cand esti in __init__.py
from .credentials import Credentials
# for people who clone this repo
# and uncomment this
# from example_credentials import Credentials

# cand esti in __init__ si vrei sa importi
# trebuie sa pui
# from .Module import Class/Function (notice the dot before the Module)
# import redis


# this is here to have multiple models with the same db
# https://stackoverflow.com/questions/28284365/how-do-i-reference-multiple-models-in-flask
db = SQLAlchemy()
    # "autocommit": True,
    # "autoflush": True not working
# if auto commit is ON and you use
# db.session.commit() -> it will raise error

# this is the app factory design pattern
# anyone that calls this function will get an app
def create_app(test_config=None):
    """
        Create and configure an instance of the Flask application.
    """
    flask_application = Flask(
        __name__,
        # with this all config will be in instance folder
        instance_relative_config=True)

    # its working
    # i dont even need to specify password
    # maybe because its super user
    flask_application.config["SQLALCHEMY_DATABASE_URI"] = Credentials.SQLALCHEMY_DATABASE_URI

    # trebuia sa avem track modifications ca sa putem sa dam db.init_app
    flask_application.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True

    db.init_app(flask_application)








    # daca pun astea imi da eroare ca cica nu exista app
    # db.create_all()
    # acum merge
    # https://flask-sqlalchemy.palletsprojects.com/en/2.x/contexts/
    # not a good idea, daca ai data, nu persista ca dai mereu reset
    # db.drop_all(app=flask_application)
    # db.create_all(app=flask_application)
    # db.drop_all()

    # flask_application.config.from_mapping(
    #     # a default secret that should be overridden by instance config
    #     SECRET_KEY="dev",
    #     # store the database in the instance folder
    #     DATABASE=os.path.join(flask_application.instance_path, "flaskapp.sqlite"),
    # )

    # if test_config is None:
    #     # load the instance config, if it exists, when not testing
    #     flask_application.config.from_pyfile("config.py", silent=True)
    # else:
    #     # load the test config if passed in
    #     flask_application.config.update(test_config)

    # https://flask.palletsprojects.com/en/2.0.x/config/
    # instance folder is deployment specific
    # must be ignored by version control
    # It’s the perfect place to drop things that either change at runtime or configuration files.
    try:
        os.makedirs(flask_application.instance_path)
    except OSError:
        pass


    # apply the blueprints to the app
    from . import views
    flask_application.register_blueprint(views.view)

    # trebuie sa fie .api altfel python nu-l vede
    from .api import views
    flask_application.register_blueprint(views.api)

    # make url_for('index') == url_for('blog.index')
    # in another app, you might define a separate main index here with
    # app.route, while giving the blog blueprint a url_prefix, but for
    # the tutorial the blog will be the main index
    flask_application.add_url_rule("/", endpoint="index")


    return flask_application


# db = SQLAlchemy(app)





# from . import views