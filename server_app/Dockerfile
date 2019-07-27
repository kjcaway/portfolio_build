FROM ubuntu:16.04
LABEL version='1.0.0'

USER root

# apt패키지 다운로드 리전 변경
COPY sources.list /etc/apt/sources.list

# 초기화, git, curl 설치
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git -y
RUN apt-get install curl -y
RUN apt-get install vim -y

# node 설치
RUN curl -sL https://deb.nodesource.com/setup_10.x  | bash -
RUN apt-get install nodejs -y
RUN node --version
RUN npm --version

# 소스파일 얻어오기
RUN mkdir -p /opt/app/portfolio
RUN git clone https://github.com/kjcaway/portfolio.git /opt/app/portfolio

# react app build
WORKDIR /opt/app/portfolio/
ENV PATH /opt/app/portfolio/node_modules/.bin:$PATH
RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent
RUN npm run build
