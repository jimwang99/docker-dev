SHELL=/bin/bash

name=riscv

#===========================================================
# Build image version 0 from consol/centos-xfce-vnc

build:
	docker build -t "$(name):v0" .

#===========================================================
# run image as container

run-%:
	make run version=v$(word 2,$(subst -, ,$@))

run:
	docker run -dit -p 5901:5901 --user 0 -v /Users/jw/docker:/mnt/host \
	    --name "$(name)-$(version)" \
	    $(name):$(version)

#===========================================================
# connect to container

bash-%:
	make bash version=v$(word 2,$(subst -, ,$@))

bash:
	docker exec -it --user root "$(name)-$(version)" /bin/bash

#===========================================================
# run latex image & bash to it

bash-latex:
	docker run -it --user 0 -v /Users/jw/docker:/mnt/host --rm --name latex aergus/latex /bin/bash
