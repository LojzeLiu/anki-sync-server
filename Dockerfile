FROM python:3.5-alpine
MAINTAINER Lojze lojze@foxmail.com

COPY ./anki-sync-server /anki-sync_server

WORKDIR /anki-sync_server

RUN pip install -r ./requirements.txt

#ENTRYPOINT ["sh", "startAnkiS.sh"]
ENTRYPOINT ["python", "-m", "ankisyncd"]