---
layout: default
title:  DockerStack
permalink: /docker-stack/
---

  docker stack deploy
  docker stack services [app_name]
  docker stack ps

  One the manager node run:
  
  docker stack deploy -c example-voting-app-stack.yml voteapp

  docker stack ls

  docker stack ps voteapp

  docker stack services voteapp

  Bind port docker-machine number to physical machine port:

  https://stackoverflow.com/questions/36286305/how-do-i-forward-a-docker-machine-port-to-my-host-port-on-osx

  * copy local file to docker-machine:
  docker-machine scp example-voting-app-stack.yml nodeA:example-voting-app-stack2.yml

  * run docker command on the nodeA
  docker-machine ssh nodeA -- docker swarm init --advertise-addr 192.168.99.100

  docker-machine ssh nodeB -- docker swarm join --token SWMTKN-1-13mqplrim2oryy9xgwu8iurf4p6poheoveub5q4em9wmvqej58-9emz60wjdbohjiy2yxm9mhnjv 192.168.99.100:2377

  docker-machine ssh nodeC -- docker swarm join --token SWMTKN-1-13mqplrim2oryy9xgwu8iurf4p6poheoveub5q4em9wmvqej58-9emz60wjdbohjiy2yxm9mhnjv 192.168.99.100:2377
  


  
