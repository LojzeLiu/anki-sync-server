FROM python:3.5
MAINTAINER Lojze lojze@foxmail.com

COPY ./anki-sync-server /anki-sync_server

WORKDIR /anki-sync_server

RUN pip install -r ./requirements.txt
RUN cat ./ankisyncd.conf

ENTRYPOINT ["python", "-m", "ankisyncd"]