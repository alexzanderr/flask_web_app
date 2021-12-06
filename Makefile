# Makefile docs
# https://earthly.dev/blog/python-makefile/
# https://stackoverflow.com/questions/920413/make-error-missing-separator
# https://gist.github.com/rsperl/d2dfe88a520968fbc1f49db0a29345b9


ROOT_NAME = $(notdir $(shell pwd))
BASENAME_ROOT = $(shell pwd)
MAIN_BIN = $(ROOT_NAME)
SPEC_FILE = "$(MAIN_BIN).spec"
MAIN_FILE = "main.py"

run:
	# astea nu merg in makefile
	# export FLASK_APP=src/run.py
	# export FLASK_ENV=development
# 	export FLASK_DEBUG=1
# 	flask run --port 5555
	./src/run.sh

guni: ./src/guni.sh
	./src/guni.sh $(w)

py:
	# ran with python3
	python3 app/$(MAIN_FILE)

repl:
	# run main.py in interactive mode
	python3 -i $(MAIN_FILE)

pypy:
	# ran with pypy3
	pypy3 $(MAIN_FILE)

cy:
	# cythonize python code
	python setup.py build_ext --inplace

crun:
	# run the compiled package with pyinstaller
	$(BASENAME_ROOT)/dist/$(ROOT_NAME)/$(MAIN_BIN)

test:
	./src/pytest.sh

pyinstaller:
	$(BASENAME_ROOT)/pyinstaller-venv/bin/pyinstaller --noconfirm --clean --onedir --name $(ROOT_NAME) main.py



setup: requirements.txt
	pip install -r requirements.txt


clean:
	rm -rfv __pycache__
	rm -rfv build
	rm -rfv dist
	rm -rfv $(SPEC_FILE)
	rm -rfv .pytest_cache

rmvenv:
	rm -rfv pyinstaller-venv

andrew:
	# so you can put whatever you want
	python -c "print('salut andrew')"