#!/bin/bash
tag=latest
imageName=blynk-server-docker

docker rm $imageName
#rm -rf data
#docker build --no-cache -f Dockerfile -t rafalsladek/$imageName:$tag .
docker build -f Dockerfile -t rafalsladek/$imageName:$tag .

#docker push rafalsladek/$imageName:$tag

# run container with bash
#docker run -it --rm -v $(PWD)/data:/root/data -p 9443:9443 -p 8080:8080 -p 8441:8441 --name $imageName rafalsladek/$imageName /bin/bash

# run container forever
docker run -d -v $(PWD)/data:/root/data -p 9443:9443 -p 8080:8080 -p 8441:8441 --name $imageName rafalsladek/$imageName:latest

docker logs $imageName --follow