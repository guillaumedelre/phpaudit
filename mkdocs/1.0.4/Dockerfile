FROM python:3.7.4-alpine3.10

RUN apk update && apk --no-cache add \
    python-pip \
    python-dev \
    openssl-dev;

ADD requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

ADD resources /project
RUN mkdir -p /project;

WORKDIR /project

ENTRYPOINT ["mkdocs"]

CMD ["serve", "--dev-addr=0.0.0.0:8000"]
