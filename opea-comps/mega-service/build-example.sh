#!/bin/bash

# set environment variables
source ./set-env.sh

# set the current working directory
cwd=$(pwd)

# pull the model to ollama
# ollama pull llama3.2

# validate the model
# curl http://${host_ip}:11434/api/generate -d '{"model": "llama3.2", "prompt":"What is Deep Learning?"}'

cd $OPEA_EXAMPLES/ChatQnA
docker build --no-cache -t opea/chatqna:latest --build-arg https_proxy=$https_proxy \
  --build-arg http_proxy=$http_proxy -f Dockerfile .

cd $OPEA_EXAMPLES/ChatQnA/ui/
docker build --no-cache -t opea/chatqna-conversation-ui:latest --build-arg https_proxy=$https_proxy \
  --build-arg http_proxy=$http_proxy -f ./docker/Dockerfile.react .