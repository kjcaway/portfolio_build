## portfolio 프로젝트 릴리즈 용 빌드

- docker version          18.09.8
- docker-compose version  1.23.1

### portfolio docker image scenario(react application + nginx)
- 1. ubuntu image pull
- 2. git, curl install
- 3. git clone
- 4. nodejs install
- 5. npm install
- 6. npm build -> we can get output react app source built
- 7. nginx image pull
- 8. nginx default.conf copy & paste
- 9. source copy to nginx index
- 10. nginx execute


### portfolio-server docker image scenario(node[express] application)
- 1. ubuntu image pull
- 2. git, curl install
- 3. git clone
- 4. node image pull
- 5. src copy & paste
- 6. config, package.json copy & paste
- 7. npm install
- 8. node execute