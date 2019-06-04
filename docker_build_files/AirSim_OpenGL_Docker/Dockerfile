# Make sure drivers are >= 390
# see run.sh to create a container
# /home/carla/AirSimNH/run.sh

FROM nvidia/opengl:1.0-glvnd-runtime-ubuntu16.04


RUN apt-get update; apt-get install -y libsdl2-2.0

RUN useradd -m carla
USER carla
ENV HOME /home/carla
COPY . /home/carla

USER root
RUN chown -R carla:carla /home/carla

RUN apt-get -y install sudo
RUN echo "carla:carla" | chpasswd && adduser carla sudo

USER carla
WORKDIR /home/carla


ENV SDL_VIDEODRIVER=offscreen

# CMD /bin/bash CarlaUE4.sh -carla-server

