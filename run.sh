#!/bin/bash

mysql -uadmin --password=mypass -e"create database mylog;"

export MYSQL_USER="root"
export MYSQL_PASS="admin"
export MYSQL_HOST="localhost"
export MYSQL_DATABASE="mylog"


php --server localhost:12345
