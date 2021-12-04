#!/usr/bin/sh

pip freeze > requirements.txt
export gp="git push origin main"
export FLASK_APP=src/run.py
export FLASK_ENV=development
export FLASK_DEBUG=1
# python src/run.py
flask run --port 5555

