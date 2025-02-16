#!/bin/bash

# set environment variables
source ./set-env.sh

# set the current working directory
cwd=$(pwd)

# pull the model to ollama
# ollama pull llama3.2

# validate the model
# curl http://${host_ip}:11434/api/generate -d '{"model": "llama3.2", "prompt":"What is Deep Learning?"}'

#cd $OPEA_EXAMPLES/ChatQnA/docker_compose/intel/cpu/aipc
docker compose -f compose.yaml up