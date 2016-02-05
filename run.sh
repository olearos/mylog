#!/bin/bash

mysql -uadmin --password=mypass -e"create database mylog;"

export MYSQL_USER="admin"
export MYSQL_PASS="mypass"
export MYSQL_HOST="localhost"
export MYSQL_DATABASE="mylog"


#php --server localhost:12345
