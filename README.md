docker build -t conf_prueba
docker run -p 8000:8000 conf_prueba

echo 'Running server...'
gunicorn --env DJANGO_SETTINGS_MODULE=config.settings config.wsgi:application --bind 0.0.0.0:8000

psycopg2
gunicorn

docker run -p 8000:8000 conf_prueba
docker stop (+ id de contenedor)

docker save -o mi_app.tar conf_prueba

ALLOWED_HOSTS = ['yourdomain.com', 'anotherdomain.com', '192.168.11.47']

sudo docker load -i mi_app.tar
sudo docker-compose up

