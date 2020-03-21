---
layout: default
title:  DockerCompose
permalink: /docker-compose-a/
---

  Purpuse: local development and testing

  docker-compose up

  docker-compose up -d

  * update logs at runtime 
  docker-compose container [NAME/GUID] -f 

  docker-compose --help

  docker-compose ps

  docker-compose down

  * Stop and remove volumes
  docker-compose down -v


  L/59
  docker-compose build

  --Rebuild image after changes!!!
  docker-compose up --build