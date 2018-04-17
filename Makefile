setup: virtualenv env pip

virtualenv:
	python3 -m pip install virtualenv

env:
	python3 -m virtualenv env -p python3

pip:
	env/bin/pip install -r requirements.txt

install_dev: setup.py
	env/bin/pip install -e .

setup.py:
	cp templates/setup.py setup.py
