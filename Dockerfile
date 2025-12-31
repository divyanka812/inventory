FROM python:3.10

WORKDIR /app1

COPY requirements.txt .
COPY docker-entrypoint.sh .

RUN chmod +x docker-entrypoint.sh

CMD ["/app1/docker-entrypoint.sh"]
