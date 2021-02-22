FROM python:3.8-alpine

RUN mkdir -p /home/flask-app
WORKDIR /home/flask-app
COPY requirements.txt /home/flask-app
RUN pip3 install -r requirements.txt
COPY . /home/flask-app
CMD ["flask", "run"]

EXPOSE 5000