# Building Docker Images and  Containers for hands-on experience
Docker, think of it as a clever toolbox for developers, allowing them to wrap up applications along with all their necessary bits and pieces in virtual packages called containers. These containers are like travel cases for apps, ensuring that no matter where you set up camp, everything you need is right there with you. It's like having your own portable workspace that you can carry from your backyard to the far corners of the world, and your work environment stays just the way you like it.


## Tools Used:- 
 [![My Skills](https://skillicons.dev/icons?i=vscode&perline=1)](https://skillicons.dev)
 [![My Skills](https://skillicons.dev/icons?i=docker&perline=1)](https://skillicons.dev)

### All Files Used:-
  1) Dockerfile
  2) .dockerignore
  3) index.html

## Implementation

### A) The main docker file used -
1) nginx as the proxy server and base image for our container
   FROM nginx:1.10.1-alpine
   
   -alpine is a super small Linux distribution
    Other base image options like Ubuntu could have been used, but nginx is faster and I needed to 
    run 
a static page so nginx was chosen.

2) The implementation was a simple HTML file with 2 images
   and the command COPY src/html /usr/share/nginx/html was used
   to copy the files

## Common Commands

### A) How to build an image
1) docker build . 
After that, a name-less docker image would be created which can be accessed
by using it's ID

2) To give a name to the docker image
docker build -t <tag-name> .
For eg. docker build -t first-file .

 3) To view running containers, use the following command.
docker ps

4) The docker images command can be used to display the images.
docker images


   Which should return something like this.....

![image](https://github.com/IshaanPotle/Docker/assets/64418106/57fd52bc-857d-45bc-8f66-04e4a14f1e35)

5) $ docker run -it --rm -d -p 8080:80 --name web nginx
With the above command, you started running the container as a daemon (-d) and published port 8080 on the host network. You also named the container web using the --name option.

6) docker start - Starts the container
7) docker stop - Stops the container
   (When you want to start or stop a specific container, use it's name after start/stop)

 
