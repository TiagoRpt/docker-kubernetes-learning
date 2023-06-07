DOCKER COMMANDS
--
Command:

docker build . 

build image (the '.' tells the source of Dockerfile on the project)
this command will generate an image ID


docker build -t 'name':'tag' .

build image with a specific name and tag
(example : docker build -t spring_app:1 .)

running image(example)
docker run -p 8080:8080  --rm -d --name containerXXX spring_app:1

---

Command:

docker run -p 8080:8080 'Image ID'

run the image created with the previous build command
use the 'Image ID' generated in the previous command
-p means 'publish'
8080:8080 -> first 8080 means the port where you want
that the container run on your local machine. second 8080 is the port that
your application is listening to start


docker run -p 8080:8080 -d 'Image ID'

the same but with '-d' command. This will start the container
but in detached mode(we can no longer see the logs of that app on the terminal,
and we can use it(the terminal) to do other things) 


docker run -p 8080:8080 -a 'Image ID'
docker attach 'container name/ID'

to attach the terminal to that container(reverse of detach)


docker run -p 8080:8080 --rm 'Image ID'

adding '--rm' after we stop the container we will be automatically deleted


docker run -p 8080:8080  --rm -d --name 'name' 'Image ID'

give container a name (--name containerXXX)

---

Command:

docker ps

Shows the docker running processes(CONTAINER ID ,CONTAINER IMAGE,CONTAINER NAME etc)

docker ps -a

Shows the containers that are stopped

---

Command:

docker stop 'container name'

Stop container name



---

Command:

docker start 'container name'

starts the container that is stopped, but runs it on background(detached mode)


---

Command:

docker logs 'container name'

if we are running in detached mode we can use this command to see the logs of a specific container 


docker logs -f 'container name'

if we add '-f' we return in to attach mode, we could see the future logs of that container


---

Command:

docker images

show the list of available images

---

Command:

docker rm 'container name'

deletes the container


docker rmi 'image ID'

deletes the image(to delete the image the container needs to be removed first)

---

Command:

docker image prune

deletes the images that are not being used by containers


