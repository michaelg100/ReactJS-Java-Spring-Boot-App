#!/bin/bash
IMAGE = 'soap-mysql-container'
CONTAINER = 'soap-mysql-container'

yes | docker system prune -a

result=$(docker ps -a --format {{.Names}} | grep $CONTAINER)

if [[ -n "$result" ]]; then
    docker rm -f $CONTAINER
    echo "container deleted"
    docker rm -f $IMAGE
    echo "image removed"
fi

docker build -f Dockerfile -t $IMAGE .

echo "run container"

docker run -d -t --name $CONTAINER -p 4040:3306 \
    -v $(pwd):/app \
    $IMAGE
