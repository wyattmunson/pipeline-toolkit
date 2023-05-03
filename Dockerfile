FROM alpine:latest

COPY . .

ENTRYPOINT ["sh", "./main.sh"]