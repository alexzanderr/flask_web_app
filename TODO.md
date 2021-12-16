

# TODOS

- [x] use OOP
- [x] implement MVC
- [x] run tests on the flask web app with pytest
- [x] use pytest-xdist to improve testing performance
- [ ] create a CI server to do some CI
- [ ] deploy using docker compose
- [ ] create cluster of this web app
- [ ] test jenkins
- [ ] use redis for caching
- [ ] flask caching
- [ ] change code base and use more flask modules
- [ ] add ipstack API for logging data about incoming IPs
- [ ] make another client used as broker
- [ ] deploy using ngnix and guvicorn (WSGI web app)
- [ ] implement cookies
- [ ] implement user login and logout
- [ ] make more tests
- [ ] make a watcher on the file save and then reload browser at current url
- [x] automate pip freeze > requirements.txt every time you run the web app
- [ ] create markdown blog (https://www.digitalocean.com/community/tutorials/how-to-use-python-markdown-with-flask-and-sqlite)
- [x] put credentials in env files
- [x] make a wrapper for the db commands
- [x] add async loading animation until the requested data is processed from database
- [ ] implement logs and add logs collection tools
- [x] add grafana as monitoring tool
- [x] create a grafana dashboard with prometheus and prometheus node-exporter
- [x] how to create routes automatically from code at runtime, thats is not possible, the best you can do is /route/$param and param is variable, because you are getting this error: AssertionError: A setup function was called after the first request was handled. This usually indicates a bug in the application where a module was not imported and decorators or other functionality was called too late.
To fix this make sure to import all your view modules, database models, and everything related at a central place before the application starts serving requests.

- [x] automatically list all existing routes in the web at index.html
- [ ] make 2 promethei instances to increase redundancy and reduce single point of failure
- [ ] add alertmanager to prometheus
- [x] embbed your grafana apllication on your flask web app routes, example 'flaskapp.com/grafana' is this possible? yes
- [ ] how to export all your grafana config? its json config
- [ ] install tempo for stack trace
- [x] run flask app with gunicorn
- [ ] redirect from nginx to gunicorn (config nginx)
- [ ] flask logging in file (https://flask.palletsprojects.com/en/2.0.x/logging/)

- [x] embedd grafana panel into this web application
- [ ] embedd grafana dashboard with authentication credentials and live reload
- [ ] async flask functions https://www.youtube.com/watch?v=0z74b3c63GA
- [x] add websockets (flask_socketio)
- [x] deploy with web sockets (gunicorn gevent worker)
- [ ] test websockets in flask development server (socketio.run(), but its not working)
- [x] use socketio with application factory design pattern
- [ ] add grafana in markdown (https://docs.gitlab.com/ee/operations/metrics/embed_grafana.html#use-grafana-rendered-images)
- [ ] production recipes https://www.toptal.com/flask/flask-production-recipes
- [ ] dynamically generate routes https://stackoverflow.com/questions/38417563/dynamically-generate-flask-routes
- [ ] grafana public data for users, for example total requests or requests per second
- [ ] add /api/coins with Auth
- [ ] use stripe payment solutions, ofc test localhost first (https://stripe.com/docs/api?lang=python)
- [x] use mongodb
- [ ] add custom 404 HTML template for website
- [x] ajax post response from ui to backend
- [x] add todo app at route /todos
- [x] make the todo app better by not refreshing and redirecting every time when you add or delete a todo item (use ajax) (now its far more better and faster)
- [x] filter todo input results (if is "" then reject it)
- [ ] how to make browser auto refresh from jquery
- [ ] add async spinner while the page loads
- [ ] add login to /todos interface
- [ ] add register to /todos interface
- [ ] add captcha validation to your form
- [ ] add security check access tokens in code
- [ ] add security check for vulnerabilities in code
- [ ] ModuleNotFoundError: No module named 'app' when testing on github workflows, maybe because in stupid ubuntu you cant use from `module_name`.something import `else`, tin minte asta din experienta mea cu aplicatiile mele, cand ai import from root package pur si simplu nu merge
- [ ]
- [ ]
- [ ]
- [ ]
- [ ]
- [ ]
- [ ]
- [ ]
- [ ]
- [ ]
- [ ]
- [ ]
- [ ]
- [ ]
- [ ]



