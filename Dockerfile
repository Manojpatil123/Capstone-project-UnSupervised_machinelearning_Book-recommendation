FROM python:latest
COPY . /usr/app/
EXPOSE 5000
RUN pip install --upgrade pip
WORKDIR /usr/app/
RUN pip install -r requirements.txt
CMD python app.py