#!/usr/bin/sh


# because this script is run from makefile
# and cwd is the root of the project
cd ./src
pytest -vv -n 4
