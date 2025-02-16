#!/bin/bash

export host_ip=bueller.fios-router.home
export OPEA_COMPS=~/work/GenAIComps
export OPEA_EXAMPLES=~/work/GenAIExamples


export DATAPREP_SERVICE_ENDPOINT="http://${host_ip}:6007/v1/dataprep"
export DATAPREP_GET_FILE_ENDPOINT="http://${host_ip}:6007/v1/dataprep/get_file"
export DATAPREP_DELETE_FILE_ENDPOINT="http://${host_ip}:6007/v1/dataprep/delete_file"

export REDIS_URL="redis://${host_ip}:6379"
export INDEX_NAME="rag-redis"

export EMBEDDING_MODEL_ID="BAAI/bge-base-en-v1.5"
export EMBEDDING_SERVICE_HOST_IP=${host_ip}
export RETRIEVER_SERVICE_HOST_IP=${host_ip}
export TEI_EMBEDDING_ENDPOINT="http://${host_ip}:6006"

export RERANK_MODEL_ID="BAAI/bge-reranker-base"
export TEI_RERANKING_ENDPOINT="http://${host_ip}:8808"
export RERANK_SERVICE_HOST_IP=${host_ip}

export LLM_SERVICE_HOST_IP=${host_ip}
export OLLAMA_ENDPOINT=http://${host_ip}:11434
export OLLAMA_MODEL="llama3.2"

export MEGA_SERVICE_HOST_IP=${host_ip}
export BACKEND_SERVICE_ENDPOINT="http://${host_ip}:8888/v1/chatqna"