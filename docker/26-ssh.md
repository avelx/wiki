---
layout: default
title:  DockerBase
permalink: /docker-ssh/
---

-----------------------------------------------------------
   !!!No need to SSH to container!!!
-----------------------------------------------------------

   docker container run -it

   docker container exec -it

-----------------------------------------------------------
   * Run container and login by using bash   

   docker container run -it --name proxy nginx bash

   docker container run -it --name proxy nginx
 
   docker container run -it --name ubuntu ubuntu

   docker container run -it alpine sh

-----------------------------------------------------------
   * Connet to existing running container:

   docker container run -d -p 3306:3306 --name db -e MYSQL_RANDOM_ROOT_PASSWORD=yes mysql
   
   docker container exec -it db bash

-----------------------------------------------------------