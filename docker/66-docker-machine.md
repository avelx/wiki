---
layout: default
title:  DockerSwarm
permalink: /docker-swarm/
---

  * Create node
  docker-machine create node1

  * Connect to machine
  docker-machine ssh node1


  * docker-machine env node1

   docker swarm init --advertise-addr 192.168.99.100

   docker swarm join --token SWMTKN-1-0eklmff71fgor2b2pwur1i9oj3y95wu74wzvcaqzzbw42jyjaf-708pmgk1gzae7dfhmdvj63b65 192.168.99.100:2377

   * update nodebase2 rights to be a manager
   docker node update --role manager nodebase2

  
   docker swarm join --token SWMTKN-1-0eklmff71fgor2b2pwur1i9oj3y95wu74wzvca>

   docker service create --replicas 3 alpine ping 8.8.8.8

   docker service ps great_kilby

-----------------------------------------------------------
   Summary
-----------------------------------------------------------

   a. init swarm -> set leader => advertised under specific IP address
   b. join leader / change role etc
   c. start service in the swarm by specifying replicas number

   * check node status:

    docker node ps nodebase1

-----------------------------------------------------------

  