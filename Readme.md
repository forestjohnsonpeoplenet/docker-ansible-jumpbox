##Run ansible inside a container from windows manually

Prerequisite to all of this: [Install Docker Toolbox for windows](https://docs.docker.com/windows/) and run the "Docker Quickstart Terminal" shortcut.

[Guide on how to build docker images on windows](https://docs.docker.com/windows/step_four/) (This is an example tutorial that explains more about docker on windows.)

go to the `docker-ansible-jumpbox` folder and build the `Dockerfile` into an image tagged `fjohnson/docker-ansible-jumpbox`

```
C:\Program Files\Git\bin\bash.exe
cd /c/path/to/docker-ansible-jumpbox
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

Use ansible

```
git clone ...
cd ...
ansible ...
```

exit to docker

```
exit
```


###Run ansible from windows inside an ephemeral container with the current working directory mounted to the container.

(Experimental)

First, you must add the folder where `ansible-here.bat` lives to your PATH or address it by full path.

Second, you must run it from a process which is running as administrator so the docker client will work (at least on my machine).

```
cd project/with/ansible/files
ansible-here [ansible arguments]
```
