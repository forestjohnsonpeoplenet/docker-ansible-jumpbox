###Run ansible inside a container from windows 

[Guide on how to build docker images on windows](https://docs.docker.com/windows/step_four/)

go to the `docker-ansible-jumpbox` folder and build the `Dockerfile` into an image tagged `fjohnson/docker-ansible-jumpbox`

```
cd /path/to/docker-ansible-jumpbox
docker build -t fjohnson/docker-ansible-jumpbox .
```

run the image as a new container named `ansible_jumpbox` in detached mode

```
docker run -d --name ansible_jumpbox fjohnson/docker-ansible-jumpbox
```

go into the container and start a bash session

```
docker exec -i -t ansible_jumpbox bash
```
