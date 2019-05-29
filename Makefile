SHELL=/bin/bash

tag=0.1

run:
	docker run -dit --name dev -v ~/work:/mnt/work dev:$(tag)

bash:
	docker exec -it dev /bin/bash
