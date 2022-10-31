FROM alpine

WORKDIR /my_django

COPY liblib .
COPY conf.json .

RUN apk update && \
    apk add --update --no-cache ca-certificates && \
    chmod +x liblib

EXPOSE 8080

CMD ["liblib", "run","-config","conf.json"]
