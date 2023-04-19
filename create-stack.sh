#!/bin/bash

if [ -z "$1" ]; then
    echo "Wrong parameter 1 MODE null"
    exit 1 
elif [ "$1" == "EKS_EC2" ]; then
      MODE=$1

    cd ../poker-hand-analyzer-microservice-springboot-aws-ecs
    ./create-stack.sh $MODE
    cd ../common-aws-vpc
    ./create-stack.sh $MODE
    cd ../common-aws-eks
    ./create-stack.sh $MODE
    cd ../common-aws-start

elif [ "$1" == "EKS_FARGATE" ]; then
      MODE=$1

    cd ../poker-hand-analyzer-microservice-springboot-aws-ecs
    ./create-stack.sh $MODE
    cd ../common-aws-vpc
    ./create-stack.sh $MODE
    cd ../common-aws-eks
    ./create-stack.sh $MODE
    cd ../common-aws-start


elif [ "$1" == "ECS_EC2" ]; then
      MODE=$1

    cd ../poker-hand-analyzer-microservice-springboot-aws-ecs
    ./create-stack.sh $MODE
    cd ../common-aws-vpc
    ./create-stack.sh $MODE
    cd ../poker-hand-analyzer-microservice-springboot-aws-ecs-iac
    ./create-stack.sh $MODE
    cd ../poker-hand-analyzer-microservice-springboot-aws-ecs-cicd
    ./create-stack.sh
    cd ../common-aws-start


elif [ "$1" == "ECS_FARGATE" ]; then
      MODE=$1 

    cd ../poker-hand-analyzer-microservice-springboot-aws-ecs
    ./create-stack.sh $MODE
    cd ../common-aws-vpc
    ./create-stack.sh $MODE
    cd ../poker-hand-analyzer-microservice-springboot-aws-ecs-iac
    ./create-stack.sh $MODE
    cd ../poker-hand-analyzer-microservice-springboot-aws-ecs-cicd
    ./create-stack.sh
    cd ../common-aws-start

elif [ "$1" == "EC2" ]; then
      MODE=$1

    cd ../poker-hand-analyzer-microservice-springboot-aws-ecs
    ./create-stack.sh $MODE
    cd ../common-aws-vpc
    ./create-stack.sh $MODE
    cd ../poker-hand-analyzer-microservice-springboot-aws-ecs-iac
    ./create-stack.sh $MODE
    cd ../poker-hand-analyzer-microservice-springboot-aws-ecs-cicd
    ./create-stack.sh
    cd ../common-aws-start


elif [ "$1" == "EC2_DOCKER" ]; then
      MODE=$1

    cd ../poker-hand-analyzer-microservice-springboot-aws-ecs
    ./create-stack.sh $MODE
    cd ../common-aws-vpc
    ./create-stack.sh $MODE
    cd ../poker-hand-analyzer-microservice-springboot-aws-ecs-iac
    ./create-stack.sh $MODE
    cd ../poker-hand-analyzer-microservice-springboot-aws-ecs-cicd
    ./create-stack.sh
    cd ../common-aws-start      

else
    echo "Wrong parameter 1 MODE: "$1
    exit 1 
fi




