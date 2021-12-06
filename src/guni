#!/usr/bin/sh

source .venv/bin/activate
# this is because gunicorn is installed in venv

echo "argument: '$1'"
cd ./src
echo "flask application is deployed with gunicorn"

gunicorn -k geventwebsocket.gunicorn.workers.GeventWebSocketWorker -w 1 -b localhost:9999 "app:create_app()" --reload --threads 2
# total_workers=$1
# if [[ ! -z $total_workers ]]; then
# 	echo "total workers: '$total_workers'"
# 	gunicorn -w $total_workers -b localhost:9999 "app:create_app()"
# else
# 	echo "at least 2 workers"
# 	gunicorn -w 2 -b localhost:9999 "app:create_app()" --reload
# fi


