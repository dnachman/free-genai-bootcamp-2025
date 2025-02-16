#!/bin/bash

# set environment variables
source ./set-env.sh

# set the current working directory
cwd=$(pwd)

# pull the model to ollama
# ollama pull llama3.2

# validate the model
# curl http://${host_ip}:11434/api/generate -d '{"model": "llama3.2", "prompt":"What is Deep Learning?"}'

cd $OPEA_COMPS
docker build --no-cache -t opea/dataprep-redis:latest --build-arg https_proxy=$https_proxy \
  --build-arg http_proxy=$http_proxy -f comps/dataprep/redis/langchain/Dockerfile .

docker build --no-cache -t opea/embedding-tei:latest --build-arg https_proxy=$https_proxy \
  --build-arg http_proxy=$http_proxy -f comps/embeddings/tei/langchain/Dockerfile .

docker build --no-cache -t opea/retriever-redis:latest --build-arg https_proxy=$https_proxy \
  --build-arg http_proxy=$http_proxy -f comps/retrievers/redis/langchain/Dockerfile .

docker build --no-cache -t opea/reranking-tei:latest --build-arg https_proxy=$https_proxy \
  --build-arg http_proxy=$http_proxy -f comps/reranks/tei/Dockerfile .