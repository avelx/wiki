-----------------------------------------------------------

  * Publish network port externaly:
  
  docker container run -p 80:80 --name webhost -d nginx

  * Check port binding for container:

  docker container port webhost

  * Get container virtual network IP address:

  docker container inspect --format '{{ .NetworkSettings.IPAddress }}' webhost

-----------------------------------------------------------

  L/29

  INSPECTION
  docker network ls

  *docker network inspect
  docker network inspect bridge

  docker network create --help
  
  CREATE NETWORK
  *docker network create --driver

  docker network create my_app_net

  TIDY CONTAINER TO SPECIFIC NETWORK
  docker container run -d --name new_nginx --network my_app_net nginx

  CONNECT/DISCONNECT
  *docker network connect

  **docker network connect [OPTIONS] NETWORK CONTAINER
  docker network connect 693da58c28a6 75c845e6437b
  
  *docker network disconnect
  docker network disconnect 693da58c28a6 75c845e6437b

-----------------------------------------------------------
  
  L/30 - DNS
 
  docker container exec -it new_nginx ping my_nginx

-----------------------------------------------------------

