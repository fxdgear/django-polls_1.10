FROM python:3-alpine
RUN apk update && apk upgrade && apk add --no-cache postgresql-dev gcc python3-dev musl-dev
RUN pip install Django psycopg2

WORKDIR /code
COPY . /code

CMD python manage.py runserver 0.0.0.0:8000
