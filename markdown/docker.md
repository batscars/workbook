##### docker management
```
# image
docker images
docker save -o tmp.tar repo:tag
docker load -i tmp.tar
docker rmi repo:tag -f
docker pull
docker tag

# container
docker push
docker ps
docker stop container_id/name
docker rm container_id/name
```
##### docker debug
```
docker run -it/-d -v -e -p --name --restart --cpuset-cpus repo:tag
docker logs -f container_id/name
```

##### docker build
```
FROM
RUN
ADD/COPY
EXPOSE
WORKDIR
CMD: 会被docker run指定的命令覆盖
ENTRYPOINT:无法被docker run指定的命令覆盖
ENV
USER
ARG 

docker build --network=host --build-arg user=test -f Dockerfile -t repo:tag 
```

