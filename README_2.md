# Docker Rails App

Ruby on rails development Environment

Project has been previous created on local directory.

Then it will be copied to /home/app/MYAPP in docker image.
After creating docker container, rails server starts automatically.
Only you do is to check web browser for localhost:3031

## Docker

To build:

- run `docker-compose build`

To run:

- run `docker-compose run --rm --service-ports ruby_dev`



## Install yarn to docker container


To run in multiple terminal windows:

- run `docker exec -it YOUR_CONTAINER_ID /bin/bash`

To exit bash or your container:

- run `exit`

To cleanup:

- run `docker-compose down`
- run `docker rmi rails-docker_ruby_dev`

## Rails

The new project has been uploaded to docker image and will be run directly.


Starting the server:

- run `rails server -p $PORT -b 0.0.0.0`. Check your localhost:3000 to see if it's working.

Stopping the server:

- hit `ctrl-c` on your keyboard to stop the server.


## Login to rails webpage



