---
layout: default
title:  DockerBase
permalink: /docker/
---

  =Total clean up all  dangling resources
  docker system prune

  = Remove any stopped containers and all unused images
  docker system prune -a
  
  docker image prune to clean up just "dangling" images

  docker system df to see space usage.

  docker-machine rm default

  docker-machine create

== Delete all containers

   docker rm $(docker ps -a -q) -f

== Delete all volumes

   docker volume prune