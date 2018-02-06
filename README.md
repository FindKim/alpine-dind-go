# alpine-docker-go
Docker Alpine image with Golang and Git

## Update Docker Image
1. Set local environment variables
	* **DOCKER_VERSION**: docker version from [Docker's hub](https://hub.docker.com/_/docker/) (default: _18.01_)
	* **ALPINE_VERSION**: alpine version the docker image inherits from (default: _3.6_)
	* **GOLANG_VERSION**: golang version to install (default: _1.9_)
		* Only supports versions managed by the official docker packaging for [golang](https://github.com/docker-library/golang)
2. Execute `update.sh` script
3. Build docker image
