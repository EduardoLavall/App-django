# Django App base 📦
 
  docker build --no-cache -t django-app .
  docker run -d --name app-django -v app-volume:/django/data --network net-django app-django
  docker compose up
  http://127.0.0.1:8000/
