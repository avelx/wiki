---
layout: default
title:  Generators
permalink: /generators/

---
 
  * Generators
  kubectl create deployment sample --image nginx --dry-run -o yaml
  kubectl create job sample --image nginx --dry-run -o yaml

  kubectl create deployment test --image nginx
  kubectl expose deployment/test --port 80 --dry-run=client -o yaml

  This is the simple way to create yaml file!!!
 
  
  