#!/usr/bin/sh

cd ./src
gunicorn -w 8 -b localhost:9999 "app:create_app()"