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

normally i should use:
- C# + ASP.NET

but right now i dont know C#, so in order to deliver something good rather than not delivering something at all I should use what I know at the moment and later I will learn C# ASP.NET

Deadline: `48 hours`

requirements as a final result:
- 2 tables
- marta + detail
- crud + filtre
- implement an MVC (model view controller)


# to run the application in dev mode and debug mode
run in your favorite shell
```shell
git clone https://github.com/alexzanderr/integrisoft-project

cd integrisoft-project

export FLASK_APP=run.py
export FLASK_ENV=development
export FLASK_DEBUG=1

flask run --port=$custom_port
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
 .
├──  __pycache__
│  └──  app.cpython-39.pyc
├──  app
│  ├──  __init__.py
│  ├──  __pycache__
│  │  ├──  __init__.cpython-39.pyc
│  │  └──  views.cpython-39.pyc
│  ├──  templates
│  │  ├──  dashboard.html
│  │  ├──  index.html
│  │  └──  mvc.html
│  └──  views.py
├──  LICENSE
├──  README.md
└──  run.py
```
