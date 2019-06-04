docker run -p="127.0.0.1:430$1$2:41451" -it --name airsim$1$2 --runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=$1 airsim/opengl:v1.0 bash
