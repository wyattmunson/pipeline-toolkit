FROM alpine:latest

COPY . .

CMD ["sh", "./main.sh"]