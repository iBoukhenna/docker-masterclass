docker run --name website -v ${PWD}:/usr/share/nginx/html:ro -d -p 81:80 nginx:latest

docker run --name website-copy --volumes-from website -d -p 84:80 nginx:latest

docker run --name user-api -v ${PWD}:/app -d -p 82:80 node:latest
docker run --name simplewar -it --rm -v ${PWD}:/usr/local/tomcat/webapp -d -p 83:8080 tomcat:latest

docker ps --format=$FORMAT

docker exec -it website bash
docker exec -it website sh

docker rm -f $(docker ps -aq)

docker build --tag iboukhenna-website:latest .
docker build --tag iboukhenna-node-api:latest .
docker build --tag iboukhenna-javaee:latest .

docker run --name website -d -p 81:80 iboukhenna-website:latest
docker run --name user-api -d -p 82:3000 iboukhenna-node-api:latest
docker run --name simplewar -d -p 83:8080 iboukhenna-javaee:latest

docker tag iboukhenna-website:latest iboukhenna-website:1
docker tag iboukhenna-website:latest iboukhenna-website:2

docker tag iboukhenna-website:1 iboukhenna/website:1
docker tag iboukhenna-website:2 iboukhenna/website:2
docker tag iboukhenna-website:latest iboukhenna/website:latest
docker tag iboukhenna-node-api:latest iboukhenna/node-api:latest
docker tag iboukhenna-javaee:latest iboukhenna/javaee:latest

docker push iboukhenna/website:1
docker push iboukhenna/website:2
docker push iboukhenna/website:latest
docker push iboukhenna/node-api:latest
docker push iboukhenna/javaee:latest

docker pull node:alpine

docker image rm node:alpine

docker inspect website

docker logs user-api
docker logs -f website

docker build -t name .

docker network connect card-generator-backend-main_default frontend_cvlj

docker inspect --format='{{json .NetworkSettings.Networks}}' postgres_cvlj

docker network disconnect card-generator-frontend_default frontend_cvlj

docker-compose build

docker-compose up -d


docker exec -u 0 -it mysql.localhost /bin/bash

yum update
apt-get update

yum install vim-enhanced -y
yum install nano -y
yum install vim-minimal -y
or
dnf install vim-enhanced -y
dnf install nano -y
dnf install vim-minimal -y


apt-get install vim
apt-get install nano

nano /etc/mysql/mysql.conf.d/mysqld.cnf
sql_mode        = STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION

docker save -o fedora-all.tar fedora


mysql -u root -p
create database mydb;
use mydb;
source db_backup.dump;
