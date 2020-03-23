---
layout: default
title:  DockerSwarm-Overlay
permalink: /docker-swarm-overlay/
---

  * Assuming we using swarm nodes create in prev assignment

  docker network create --driver overlay mydrupal

  docker network ls

  docker service create --name psql --network mydrupal -e POSTGRES_PASSWORD=mypass postgres

  docker service create --name drupal --network mydrupal -p 80:80 drupal

  * Refresh command every few minutes
  watch docker service ls

  * Stop Each Vm
  docker-machine stop nodebase3

  * Open specific port on VM
  VBoxManage modifyvm "nodebase1" --natpf1 "drupal,tcp,,80,,3000"
  80   - actual host post number;
  3000 - within a vm port number;

  * create 3 replicates of elastic search under Layer 3 LB

  docker service create --name search --replicas 3 -p 9200:9200 elasticsearch:2
