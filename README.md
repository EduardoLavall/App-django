# Django App base 📦
### Este repositório contém a estrutura base para o funcionamento de um aplicativo Django. Inclui as configurações essenciais para iniciar um novo projeto, com suporte a múltiplos ambientes, dependências organizadas e pronto para ser estendido.

  - docker build --no-cache -t django-app .
  - docker run -d --name app-django -v app-volume:/django/data --network net-django app-django
  - docker compose up
  - http://127.0.0.1:8000/
