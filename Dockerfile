FROM continuumio/anaconda3:4.4.0
COPY . /usr/app/
EXPOSE 5000
RUN pip install --upgrade pip
WORKDIR /usr/app/
RUN pip install -r requirements.txt
CMD python app.py