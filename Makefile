SHELL=/bin/bash

name=riscv
tag=v0.0

run:
	docker run -dit --name $(name) -v /Users/jw/docker-shared:/mnt/host $(name):$(tag)

bash:
	docker exec -it $(name) /bin/bash
