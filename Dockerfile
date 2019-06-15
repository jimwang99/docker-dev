## Custom Dockerfile
FROM consol/ubuntu-xfce-vnc

# Switch to root user to install additional software
USER 0
RUN apt-get update
RUN apt-get install -y vim wget python python3 gcc g++ make git
RUN apt-get install -y gvim gedit
RUN apt-get install -y apt-file
RUN apt-file update

RUN ln -sf /mnt/host ~/docker
RUN echo "if [[ -f ~/docker/dev/_bashrc ]]; then source ~/docker/dev/_bashrc; else echo 'no _bashrc'; fi" >> ~/.bashrc
