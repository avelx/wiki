---
layout: default
title:  DockerBase
permalink: /docker/
---

  == history && inspect

  ** Run new nginx container
  docker container run --publish 80:80 --detach --name webhost nginx

  ** This is a history of the layers
  docker history nginx

  docker image inspect nginx