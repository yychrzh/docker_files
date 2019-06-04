docker run -p 127.0.0.1:4300$2:41451 --name opengl$2 --runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=$1 -it carlasim/carla:0.8.2 bash
