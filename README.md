# blynk-server-docker
a docker image with blynk-server 

### Blynk examples

https://examples.blynk.cc/

### How to install this image
```
docker pull rafalsladek/blynk-server-docker
```

### How to use this image
```
docker run -d \
    -e TZ=Europe/Berlin \
    -v $(PWD)/data:/root/data \
    -w /root \
    -p 9443:9443 \
    -p 8080:8080 \
    -p 8441:8441 \
    --name blynk-server \
    --restart unless-stopped \
      rafalsladek/blynk-server-docker:latest
```

### How to see logs of running the container
```
docker logs blynk-server --follow
```

### How to attach to running the container
```
docker attach blynk-server
```
