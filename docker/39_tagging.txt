---
layout: default
title:  DockerBase
permalink: /docker/
---

  ==Create a new tag:
  docker image tag nginx avelresearch/general:nginx

  avelresearch/general - own repo
  nginx                - tag image with new name

  Upload to my own repo
  docker image push avelresearch/general:nginx

  ==To get help on options:
  docker image tag --help

  docker image push pavel/nginx