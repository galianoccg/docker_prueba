FROM python:3.10.4-alpine3.15

WORKDIR /app

COPY ./requirements.txt ./

RUN pip install -r requirements.txt

COPY ./ ./

CMD ["sh", "entrypoint.sh"]