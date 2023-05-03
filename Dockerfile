FROM alpine:latest

COPY . .

# ENTRYPOINT ["sh", "./main.sh"]
CMD ["sh", "/main.sh"]