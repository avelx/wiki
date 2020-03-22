---
layout: default
title:  DockerSwarm
permalink: /docker-swarm/
---

  docker swarm init

  * Details 
  docker swarm join --token SWMTKN-1-2oevk0d48cfjyr9ee1pra1tub0in3glrrqm8i9e0twlqm62ujq-385tlox4266lervqlo5olsj02 192.168.1.8:2377

  * Check the leader:
  docker node ls

  
  docker service --help

  * create service
  docker service create alpine ping 8.8.8.8


  docker service ls  

  docker service ps zen_joliot

  * scale up service
  docker service update zen_joliot --replicas 3

  *
  docker service ps zen_joliot
  
  * remove service
  docker service rm zen_joliot