#!/bin/bash
source ./env.config
docker stop $CONTAINER_NAME 2>/dev/null && docker rm $CONTAINER_NAME 2>/dev/null
docker build -t $CONTAINER_NAME .
docker run -d -p $PORT:$PORT -v ./log:/app/log --env-file .env --name $CONTAINER_NAME $CONTAINER_NAME
