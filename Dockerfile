FROM python:latest
COPY . /app
EXPOSE 5000
RUN pip install --upgrade pip
WORKDIR /app
RUN pip install -r requirements.txt
CMD gunicorn --workers=4 --bind 0.0.0.0:5000 app:app