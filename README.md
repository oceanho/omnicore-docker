# omnicore.docker

A wapper for Omnilayer/omnicore docker image

## Directory & File

* Dockerfile
* Dockerfile.baseos
* Dockerfile.omnicore

## How to use it

1. Build image
1. Run container and testing

### Build base-os image

1. Clone omnicore source core: `git clone https://github.com/OmniLayer/omnicore.git files/omnicore`
1. Build image base-os: `docker build -t oceanho/omnilayer/omnicore-baseos -f Dockerfile.baseos .`
1. Build image omnicore: `docker build -t oceanho/omnilayer/omnicore -f Dockerfile.omnicore .`

### Run container and testing

docker run -name my_omnicore_node001 -d -p 8832:8832 -p 18832:18832 -v ~/omnicore:/root/omnicore oceanho/omnilayer/omnicore:latest
