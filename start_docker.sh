#!/bin/bash

docker build -t username/my-lamp-app .

docker run -d -p 80:80 -p 3306:3306 username/my-lamp-app


