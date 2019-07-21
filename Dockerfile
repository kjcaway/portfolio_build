FROM ubuntu:16.04
LABEL version='1.0.0'

USER root

COPY sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git -y
RUN apt-get install curl -y
RUN apt-get install vim -y

RUN curl -sL https://deb.nodesource.com/setup_10.x  | bash -
RUN apt-get install nodejs -y
RUN node --version
RUN npm --version

RUN mkdir /opt/app
RUN git clone https://github.com/kjcaway/portfolio.git /opt/app

WORKDIR /opt/app/portfolio/
ENV PATH /opt/app/portfolio/node_modules/.bin:$PATH
RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent

CMD ["npm", "start"]