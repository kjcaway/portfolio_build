## portfolio 프로젝트 릴리즈 용 빌드

- docker version          18.09.8
- docker-compose version  1.23.1

### portfolio docker image scenario(react application + nginx)
1. ubuntu image 다운로드
2. ubuntu - git, curl 설치
3. ubuntu - git으로부터 소스 얻어옴
4. ubuntu - nodejs 설치 후 webpack 빌드
5. ubuntu - output 생성
6. nginx image 다운로드
7. nginx - nginx 설정파일 컨테이너로 카피
8. nginx - output 컨테이너로 카피
9. nginx - nginx 실행


### portfolio-server docker image scenario(node[express] application)
1. ubuntu image 다운로드
2. ubuntu - git, curl 설치
3. ubuntu - git으로부터 소스 얻어옴
4. node image 다운로드
5. node - 서버소스 컨테이너로 카피
6. node - config, package.json 컨테이너로 카피
7. node - npm install
8. node - node 실행