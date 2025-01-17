CONTAINER_NAME=TheHiddenAdversariesDocker
PROJECT_DIRECTORY_HOST=/raid/mlcysec20/TheHiddenAdversaries
PROJECT_DIRECTORY_CONTAINER=/project
DOCKER_IMAGE=nvcr.io/nvidia/pytorch:20.12-py3
JUPYTER_DOCKER_PORT=61242 # forward the jupyter port to this port on the host machine
JUPYTER_PORT=8888
# --rm makes docker delete the container as soon as it is closed, keep that in mind if we need to make changes to the container
docker run --gpus all --name $CONTAINER_NAME --rm -v $PROJECT_DIRECTORY_HOST:$PROJECT_DIRECTORY_CONTAINER -p $JUPYTER_DOCKER_PORT:$JUPYTER_PORT -w $PROJECT_DIRECTORY_CONTAINER $DOCKER_IMAGE jupyter notebook 
