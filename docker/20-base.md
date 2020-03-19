---
layout: default
title:  Docker-Base
---

	* Docker containers

L/19
-----------------------------------------------------------
 1. General
-----------------------------------------------------------

  docker version
  docker info    - details information;

  Management command + sub command + options;

-----------------------------------------------------------
 2. Images & Containers
-----------------------------------------------------------

    Run container
    
    Blocking console:

    docker container run --publish 80:80 nginx

    *Detach mode:

    docker container run --publish 80:80 --detach nginx

    docker container ls
    
    docker container ls -a

    docker container stop 770


   *Specify container name
   
    docker container run --publish 80:80 --detach --name webhost nginx

   * Logs
    docker container logs webhost
  
    docker container top webhost

   * Remove containers

   docker container rm -f  

-----------------------------------------------------------
L/20

   docker run --name mongo -d mongo
  
   Passing environment setting into container:

   --env Or -e

   docker container run -d -p 3306:3306 --name db -e MYSQL_RANDOM_ROOT_PASSWORD=yes mysql

   docker container logs db

   docker container run -d --name webserver -p 8080:80 httpd

   docker container run -d --name proxy -p 80:80 nginx

   *Stop containers using single command:

   docker container stop proxy websever db

-----------------------------------------------------------