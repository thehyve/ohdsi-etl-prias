FROM python:slim

WORKDIR /app

RUN apt-get update && \
    apt-get install -yq libpq-dev python-dev && \
    rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*

ADD requirements.txt /app
RUN pip install --no-cache-dir -r /app/requirements.txt

COPY . .
