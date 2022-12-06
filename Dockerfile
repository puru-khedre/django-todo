FROM python:3
WORKDIR /app
COPY . /app
RUN pip install django
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
EXPOSE 8001
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8001" ]