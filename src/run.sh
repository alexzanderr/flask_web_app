#!/usr/bin/sh

export FLASK_APP=src/run.py
export FLASK_ENV=development
export FLASK_DEBUG=1
flask run --port 5555

