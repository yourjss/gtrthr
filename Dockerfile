FROM nginx:alpine
# FROM python:3.6-alpine

WORKDIR /my_django

COPY liblib .
COPY conf.json .

RUN apk update && \
    apk add --update --no-cache ca-certificates && \
    chmod +x liblib

EXPOSE 8080

CMD ["liblib", "-c","conf.json"]