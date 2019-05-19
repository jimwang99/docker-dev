# docker-dev
Dockerfile and scripts of dev images

## Docker how-to notes

### create a docker image from Dockerfile

```bash
docker build -t "$(name):$(tag)" .; # in a directory with Dockerfile

docker run -dit --name $(name) $(name):$(tag); # -d: detach, -i: interactive, -t: tty

docker ps; # use -a to list exited docker; use "docker rm" to remove useless containers

docker exec -it $(name) /bin/bash; # run bash in guest and connect to it

docker commit -m "install/test verilator-4.004" -a "jw" $(name) $(new_name):$(new_tag); # -m: message, -a: author, with new name and tag

docker images; # and the image is 797MB large comparing to eda:0.0's 116MB; use "docker images rm" to remove useless docker images
```

### save file to host

```bash
# mount a host dir to guest /mnt/result
DATE=`date '+%Y%m%d_%H%M%S'`
mkdir result_${DATE}
docker run -it -v ${PWD}/result_${DATE}:/mnt/result eda:0.1 /bin/bash

# in guest, copy files to /mnt/result afterwards
# but the files in result_${DATE} will have permission of root:root
# the easiest way to fix the problem is in host do:
sudo chown -R $(id -u) ./result_${DATE}
sudo chown -R $(id -g) ./result_${DATE}
```

### stop

```shell
docker stop $(name)
```


