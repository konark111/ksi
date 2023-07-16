FROM python:3.12.0b4-slim-bullseye

WORKDIR /data

RUN pip install django==3.2

COPY . .

RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]


