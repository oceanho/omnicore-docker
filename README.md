# omnicore.docker

A wrapper for Omnilayer/omnicore docker image

## 1. Directory & File

* Dockerfile
* Dockerfile.baseos
* Dockerfile.omnicore

## 2. How to use it

1. Build image
1. Run container and testing

### 2.1 Build docker image

1. Clone omnicore source core: `git clone https://github.com/OmniLayer/omnicore.git files/omnicore`
1. Build image base-os: `docker build -t oceanho/omnilayer/omnicore-baseos -f Dockerfile.baseos .`
1. Build image omnicore: `docker build -t oceanho/omnilayer/omnicore -f Dockerfile.omnicore .`

### 2.2 Run container and testing

`docker run -name my_omnicore_node001 -d -p 8832:8832 -p 18832:18832 -v ~/omnicore:/root/omnicore oceanho/omnilayer/omnicore:latest`

## 3. Basic data info

docker image of ports,volumes and bitcoin.conf

### 3.1 Ports & Volumes

* 8832: 
* 18832: the rpc service

### 3.2 bitcoin.conf
