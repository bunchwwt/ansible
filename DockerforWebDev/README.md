# Docker

## What is docker
- lightweight, open, secure platform
- simplify building, shipping and running apps
- shipping container system for code
- runs natively on Linux or Windows Server


## Role of images and containers
- image used to build container, it is the blueprint to get a running container going. 
- image - read only template composed of layered filesystems used to share common files and create Docker container instances. 

- containers where the live application runs.
- container - an isolated and secured shipping container created from an image that can be run, started, stopped, moved, and deleted. 

- difference between containers and virtual machines
- VM's run on top of of a host operating system. Then run guest OS on hypervisor. 
- docker containers - sit on top of host operating system, the container is the docker engine. no guest OS. Much smaller image, not guest OS. They start v fast


## Docker benefits
- help setup env very quickly, eliminate app conflicts, provide env consistency, helps ship software faster


## LAYERED FILE SYSTEM
- layers of files that build upon eachother
- image - read only layer
- container - read write layers, thin
 

## Volumes
 - is a special type of directory in a container typically referred to as a data volume
 - can be shared and reused among containers
 - updates to an image wont affect a data volume
 - volumes are persisted even after containers are delted
 - going to be an alias
 - `docker run -p 8080:3000 -v /var/www node` - creates a data volume
 - `docker inspect mucontainer` - see where a volume is located
 - customizing the host location for a data volume - `docker run -p 8080:3000 -v $(pwd):/var/www node`
    - node is the name of image, pwd is the host location 


## HOOKING A VOLUME TO NODE.JS SOURCE CODE
- `docker run -p 8080:3000 -v $(pwd):/var/www -w "/var/www" node npm start`
    - docker run on 3000 internally, setup volumes points to src code in current working directory
    - use that volume as working directory, so npm starts from proper directory
    - links source code to container
    - 

### running aspnet
 - `docker pull mcr.microsoft.com/dotnet/core/sdk`
 - `docker run -it -p 8080:5000 -v $(pwd):/app -w "/app" mcr.microsoft.com/dotnet/core/sdk /bin/bash`
    - this will get us in the container... sweet
    - now you can run the app in the container.. 

## Building a custom image
- `docker build -t <your username>/node . `