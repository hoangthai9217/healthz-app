#!/bin/zsh

TAG="0.1.2"
docker build -t healthz-app:$TAG .
docker tag healthz-app:$TAG 535002848241.dkr.ecr.ap-southeast-1.amazonaws.com/users:$TAG
docker tag healthz-app:$TAG 535002848241.dkr.ecr.ap-southeast-1.amazonaws.com/payments:$TAG
docker push 535002848241.dkr.ecr.ap-southeast-1.amazonaws.com/users:$TAG
docker push 535002848241.dkr.ecr.ap-southeast-1.amazonaws.com/payments:$TAG