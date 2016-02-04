#!/bin/bash

docker build -t my-lamp-app .

docker run -d -p 80:80 -p 3306:3306 my-lamp-app


