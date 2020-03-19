
  ** immutable, ephemeral
   
  == Immutable infrastructure ==

  Containers never change
  
  Separatio of concerns 
  
  == Data volumes - special location outside of container UFS

  docker volume ls

  docker volume inspect mysql-db

  * create volume ahead of time at runtime

  docker volume create mysql-db-alpha
 
  Named volumes:      
  docker container run -d --name mysql3 -e MYSQL_ALLOW_EMPTY_PASSWORD=true -v mysql-db:/var/lib/mysql mysql

  == Bind mounts - link container path to host path

  * create container with mounted volume
  docker container run -d --name nginx -p 80:80 -v $(pwd):/usr/share/nginx/html nginx
  
  docker container exec -it nginx bash
  
  cd /usr/share/nginx/html


  docker container run -d --name jekyll_instance jekyll/jekyll
 