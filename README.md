# metro.digital project

this is a python flask web app that uses SQL and OOP

technologies:
- SQL/SQLAlchemy (databases)
- Python (for writing the app with flask)
- Flask library for creating a web app with routes
- OOP (object oriented programming)
- HTML (hyper text markup language)
- CSS (for design)
- JavaScript (for interaction with the browser and from the browser)
- MVC (Model View Controller, we are using flask with MVC)


# to run the application in dev mode and debug mode
run in your favorite shell
```shell
git clone https://github.com/alexzanderr/integrisoft-project

cd integrisoft-project

export FLASK_APP=src/run.py
export FLASK_ENV=development
export FLASK_DEBUG=1

flask run --port=5555
```

# recommended project tree structure
```shell
/yourapp
    /run.py
    /config.py
    /app
        /__init__.py
        /views.py
        /models.py
        /static/
            /main.css
        /templates/
            /base.html
    /requirements.txt
    /yourappenv
```

or

```shell
yourapp/
    __init__.py
    static/
    templates/
        home/
        control_panel/
        admin/
    views/
        __init__.py
        home.py
        control_panel.py
        admin.py
    models.py
```

or bigger file tree structure for larger projects

inspiration for below trees:
https://stackoverflow.com/questions/14415500/common-folder-file-structure-in-flask-app


flask minimal skeleon
```shell
myproject
├── config.py
├── instance
│   └── config.py
├── myproject
│   ├── commands.py
│   ├── controllers.py
│   ├── extensions.py
│   ├── forms.py
│   ├── __init__.py
│   ├── models.py
│   ├── routes.py
│   └── ui
│       ├── static
│       │   ├── css
│       │   │   └── styles.css
│       │   └── js
│       │       └── custom.js
│       └── templates
│           └── index.html
├── README.md
├── requirements.txt
└── wsgi.py
```

and

django minimal skeleon
```shell
myproject
├── config.py
├── development.py
├── instance
│   └── config.py
├── myproject
│   ├── auth
│   │   ├── controllers.py
│   │   ├── forms.py
│   │   ├── __init__.py
│   │   ├── models.py
│   │   └── routes.py
│   ├── helpers
│   │   ├── controllers.py
│   │   ├── __init__.py
│   │   └── models.py
│   ├── __init__.py
│   └── ui
│       └── templates
│           ├── 404.html
│           ├── 500.html
│           └── base.html
├── README.md
├── requirements.txt
├── tests
│   ├── auth
│   │   ├── __init__.py
│   │   └── test_controllers.py
│   └── __init__.py
└── wsgi.py
```


# current project tree structure
```shell
❱  tree
❱  tree
 .
├──  .github
├──  .gitignore
├──  docker-compose.yml
├──  Dockerfile
├──  extra.info
├──  instance
├──  interview.prep
├──  Jenkinsfile
├──  LICENSE
├──  Makefile
├──  pyrightconfig.json
├──  README.md
├──  requirements.txt
├──  src
│  ├──  app
│  │  ├──  __init__.py
│  │  ├──  api
│  │  │  ├──  __init__.py
│  │  │  ├──  models.py
│  │  │  └──  views.py
│  │  ├──  credentials.py
│  │  ├──  database_manager.py
│  │  ├──  example_credentials.py
│  │  ├──  models.py
│  │  ├──  redis_manager.py
│  │  ├──  static
│  │  │  ├──  icons
│  │  │  └──  img
│  │  ├──  templates
│  │  │  ├──  dashboard.html
│  │  │  ├──  index.html
│  │  │  ├──  mvc.html
│  │  │  ├──  subscribers.html
│  │  │  └──  users.html
│  │  └──  views.py
│  ├──  instance
│  ├──  pytest.sh
│  ├──  run.py
│  ├──  run.sh
│  └──  tests
│     ├──  test_api.py
│     ├──  test_db.py
│     └──  test_flaskapp.py
└──  TODO.md
```

# run the application with gunicorn (WSGI gateway http server)
references:
- https://stackoverflow.com/questions/25319690/how-do-i-run-a-flask-app-in-gunicorn-if-i-used-the-application-factory-pattern

```shell
gunicorn -w 8 src/run.py:flask_application
```
you are forbidden to run with development server, lol

if you have application factory design pattern just specify the file and `create_app` function
8 workers, works on 8 threads with the run.py file and flask_application variable

how to actually run
```shell
cd ./src
gunicorn -w 8 -b localhost:9999 "app:create_app()"

[2021-12-04 20:56:49 +0200] [4008290] [INFO] Starting gunicorn 20.1.0
[2021-12-04 20:56:49 +0200] [4008290] [INFO] Listening at: http://127.0.0.1:9999 (4008290)
[2021-12-04 20:56:49 +0200] [4008290] [INFO] Using worker: sync
[2021-12-04 20:56:49 +0200] [4008291] [INFO] Booting worker with pid: 4008291
[2021-12-04 20:56:49 +0200] [4008292] [INFO] Booting worker with pid: 4008292
[2021-12-04 20:56:49 +0200] [4008293] [INFO] Booting worker with pid: 4008293
[2021-12-04 20:56:49 +0200] [4008294] [INFO] Booting worker with pid: 4008294
[2021-12-04 20:56:49 +0200] [4008295] [INFO] Booting worker with pid: 4008295
[2021-12-04 20:56:50 +0200] [4008296] [INFO] Booting worker with pid: 4008296
[2021-12-04 20:56:50 +0200] [4008298] [INFO] Booting worker with pid: 4008298
[2021-12-04 20:56:50 +0200] [4008305] [INFO] Booting worker with pid: 4008305
```
done, you have 8 threads for your flask web app