FROM ubuntu:latest

COPY . .

# install tools
RUN apt update -y
RUN apt install dnsutils -y
RUN apt install net-tools -y
RUN apt install curl -y

# ENTRYPOINT ["sh", "./main.sh"]
CMD ["sh", "/main.sh"]