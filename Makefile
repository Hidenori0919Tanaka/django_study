up-d:
	docker-compose up -d
up:
	docker-compose up
exec:
	docker-compose exec web bash
stop:
	docker-compose stop
down:
	docker-compose down
create-djangosnippets:
	docker-compose run --rm web django-admin startproject djangosnippets .
runserver:
	docker-compose run --rm web python3 manage.py runserver
startapp:
	docker-compose run --rm web django-admin startapp snippets
makemigrations:
	docker-compose run --rm web python3 manage.py makemigrations
migrate:
	docker-compose run --rm web python3 manage.py migrate
shell:
	docker-compose run --rm web python3 manage.py shell
test:
	docker-compose run --rm web python3 manage.py test
createsuperuser:
	docker-compose run --rm web python3 manage.py createsuperuser