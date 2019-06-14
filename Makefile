SHELL=/bin/bash

name=riscv
tag=v0.0

# run:
#         docker run -dit --name $(name) -v /Users/jw/docker-shared:/mnt/host $(name):$(tag)

bash:
	docker exec -it --user $(shell id -u):$(shell id -g) $(name) /bin/bash

root-bash:
	docker exec -it --user root $(name) /bin/bash


run:
	docker run -dit -p 5901:5901 -p 6901:6901 --user 0 --name $(name) -v /Users/jw/docker:/mnt/host consol/ubuntu-xfce-vnc
