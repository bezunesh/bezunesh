all: setup install migrate run

setup:
	python3 -m venv .venv
	source .venv/bin/activate

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt
migrate:
	# Run database migrations
	python manage.py migrate

run_dev:
	# Run development server
	python manage.py runserver 0.0.0.0:8080
	
run_prod:
	# Run gunicorn server
	gunicorn --reload -c conf/gunicorn_conf.py resume_app.wsgi

collect_static:
	python manage.py collectstatic
