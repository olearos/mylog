#!/bin/bash

docker build -t my-lamp-app .

#docker run -d -p 80:12345 -p 3306:3306 my-lamp-app
docker run -d -p 80:80 -p 12345:12345 -p 33061:3306 -e MYSQL_PASS="mypass" my-lamp-app


