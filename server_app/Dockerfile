FROM ubuntu:16.04 AS builds
LABEL version='1.0.0'

USER root

# apt패키지 다운로드 리전 변경
COPY sources.list /etc/apt/sources.list

# 초기화, git, curl 설치
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git -y
RUN apt-get install curl -y

# 소스파일 얻어오기
RUN mkdir -p /opt/app/portfolio
RUN git clone https://github.com/kjcaway/portfolio.git /opt/app/portfolio

# node pull
FROM node:10.16.0-alpine

ENV PORT 8080
RUN mkdir -p /opt/app/portfolio-server
WORKDIR /opt/app/portfolio-server

# 서버 소스 카피
COPY --from=builds /opt/app/portfolio/server /opt/app/portfolio-server
COPY package*.json ./
COPY config.js ./config/config.js

RUN npm install

EXPOSE ${PORT}
CMD [ "node", "app.js" ]