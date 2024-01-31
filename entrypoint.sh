#!/bin/sh
echo 'Running collecstatic...'
python3 manage.py collectstatic --no-input --settings=config.settings

python manage.py makemigrations votantes --settings=config.settings
echo 'Applying migrations...'   

python manage.py migrate --settings=config.settings


echo 'Running server...'
gunicorn --env DJANGO_SETTINGS_MODULE=config.settings config.wsgi:application --bind 0.0.0.0:8000