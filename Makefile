create:
	python3 -m venv venv

activate:
	. venv/bin/activate

install:
	pip3 install --upgrade pip &&\
		pip3 install -r requirements.txt

lint:
	hadolint --ignore=DL3013 Dockerfile
	pylint --disable=R,C,W ./app.py

init_setup: create activate install
