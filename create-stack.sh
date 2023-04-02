#!/bin/bash

if [ -z "$1" ]; then
    echo "Wrong parameter 1 MODE null"
    exit 1 
elif [ "$1" == "EC2" ]; then
      MODE=$1
elif [ "$1" == "FARGATE" ]; then
      MODE=$1
else
    echo "Wrong parameter 1 MODE: "$1
    exit 1 
fi



cd ../poker-hand-analyzer-microservice-springboot-aws-ecs
./create-stack.sh $MODE
cd ../common-aws-vpc
./create-stack.sh
cd ../poker-hand-analyzer-microservice-springboot-aws-ecs-iac
./create-stack.sh $MODE
cd ../poker-hand-analyzer-microservice-springboot-aws-ecs-cicd
./create-stack.sh
cd ../poker-hand-analyzer-microservice-springboot-aws-ecs-start
