# docker-hugo-server

This repository supplies the Docker Hub container located at 
https://hub.docker.com/r/databliss/docker-hugo-server/ . Docker Hub will 
automaticaly update the creation of the Docker image when it detects any 
changes made to this repository.

**databliss/docker-hugo-server** is an installation of Hugo release 0.15 
running on Alpine Linux release 3.3.


##databliss/docker-hugo-server

Docker image that runs the Hugo static web site compiler as a dynamic server
to enable local development of a static web site using Markdown description
located in a directory. 

Use this Docker container _instead of installing Hugo_ directly on your
computer. This will keep Hugo and its dependencies separate from any
software you have installed.

The file **hugoServer** is provided as an example run script to run the Hugo
website from within this image. The command to run the server from
the root directory of the web site is:

    docker run -p 1313:1313 -e VIRTUAL_HOST="${1}" --name hugo-server databliss/docker-hugo-server .

The options are:

* **-d** runs the container in detached mode (continuous server).

* **-p** maps the port inside of the Docker container to an externally accessible port. In this case port 1313 is mapped to port 1313.

* **-e** sets the environment variable ```VIRTUAL_HOST``` within the container. This is the URL for the website which is included in various ways in the generated web site source code.

* **--name** provides a permanent name to the container so that it can be later deleted or otherwise managed.

* The ***```.```*** (dot) signifies that the present working directory is the root of the website defined using Markdown following Hugo directives.

##Usage

Create a directory in your computer, place a normal Hugo website definition and
run the command (above). The result is that a local website is run and can be 
accessed from ```http://localhost:1313```. 

NB: You may need to use ```-e VIRTUL_HOST="http://docker.local:1313"
