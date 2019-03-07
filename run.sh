#!/bin/sh
########################################"

docker-compose up -d --build
docker-compose scale app=10
docker ps -a
