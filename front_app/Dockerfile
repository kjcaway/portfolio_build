FROM ubuntu:16.04 AS bulids
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

# nginx pull
FROM nginx:1.13.9-alpine

# nginx의 기본 설정을 삭제하고 실제 사용할 설정 복사
COPY default.conf /etc/nginx/conf.d/default.conf

# 빌드산출물을 nginx 경로로 이동
COPY --from=bulids /opt/app/portfolio/build /usr/share/nginx/html

# 80포트 오픈하고 nginx 실행
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]