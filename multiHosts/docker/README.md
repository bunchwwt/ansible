

Create Image

- In current directory (directory with dockerfile)
- `docker build .`
- period is path to current directory
- Note this creates image not container
- To build image with tag `docker build -t hello-ansible .`

- Checkout docker images `docker images`

Create Container
- run `docker images`



The straight forward 
- `docker build -t ansible .`
- `docker images` grab the image ID ex: 04289b588a9b
- `docker run -d -p 80:80 04289b588a9b` get ID back and container should be running
- ensure running `docker ps`




Stop 
- Find docker name EX: ecstatic_cori
- `docker stop ecstatic_cori`


See all images
- docker ps -a
- from here you can run images already created. 
