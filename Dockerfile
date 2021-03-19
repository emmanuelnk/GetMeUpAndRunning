FROM ubuntu

RUN apt-get update && apt-get install -y sudo
RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker

RUN sudo apt-get update 
 
WORKDIR /home/docker/gmuar

COPY . .

