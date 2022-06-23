FROM python:latest

ADD requirements.txt /opt
ADD hello.py /opt

RUN pip3 install -r /opt/requirements.txt

ENV FLASK_APP=hello

WORKDIR /opt

ENTRYPOINT["flask", "run, --host=0.0.0.0"]
