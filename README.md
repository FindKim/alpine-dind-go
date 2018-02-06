# alpine-dind-go
Docker in Docker Alpine image with Golang
* 

## Update Docker Image
1. Set local environment variables
	* **DOCKER_IMAGE**: image from [Docker's hub](https://hub.docker.com/_/docker/) (default: _docker:18.01-dind_)
	* **ALPINE_VERSION**: alpine version the docker image inherits from (default: _3.6_)
	* **GOLANG_VERSION**: golang version to install (default: _1.9_)
		* Only supports versions managed by the official docker packaging for [golang](https://github.com/docker-library/golang)
2. Execute `update.sh` script
3. Build docker image
