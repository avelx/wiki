---
layout: default
title:  Kubernetes
permalink: /kubernetes-start/

  kubectl run
  kubectl create
  kubectl apply
  
---

  kubectl version

  kubectl run my-nginx --image nginx

  kubectl get pods

  kubectl get all

  * Delete all pods
  kubectl delete pods --all

  *Scaling 
  ???
  kubectl run my-apache --image httpd
  kubectl scale deploy/my-apache --replicas 2

  * Logs
  kubectl logs my-apache

  kubectl logs my-apache --follow --tail 1

  kubectl logs -l run=my-apache 

  * Describe

  kubectl describe pod/my-apache
 
  kubectl get pods -w
  
  * Ports
  kubectl expose


  kubectl create deployment httpenv --image=bretfisher/httpenv

  kubectl delete pod httpenv-bd844d85f-ckz9w

  kubectl scale deployments httpenv --replicas 2
  
  kubectl expose deployments httpenv --port 8888

  kubectl get service

  kubectl run --generator=run-pod/v1 tmp-shell --rm -it --image bretfisher/netshoot -- bash
  > curl httpenv:8888


  Create NodePort and LoadBalancer

  kubectl expose deployment/httpenv --port 8888 --name httpenv-np --type NodePort
 
  kubectl expose deployment/httpenv --port 8888 --name httpenv-lb --type LoadBalancer

  * DNS Service
  kubectl get namespaces
 
  
  