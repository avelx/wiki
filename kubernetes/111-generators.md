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

  *This is the simple way to create yaml file!!!
 
  ** Depricated: kubectl run ->
  == Use kubectl create/apply instead:

  kubectl run test --image nginx --dry-run
  kubectl run test --image nginx --restart OnFailure --dry-run

  kubectl run test --image nginx --restart Never --dry-run
  kubectl run test --image nginx --schedule "*/1 * * * *" --dry-run

---
  * 113: Imperative && Declarative:

  ** IMPERATIVE **
  kubectl run -- 
  kubectl create [deployment|..] 
  kubectl update 

  ** DECLARARTIVE **
  kubectl apply -f my-resources.yaml
          
  -> run, expose, scale, edit, create deployment

  

