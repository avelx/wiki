
  A. Create postgres container
  docker container run -d --name psql -v psql:/var/lib/postgresql/data postgres:9.6.1

  B. Watch log
  docker container logs -f psql

  C. Run another container mounted to the same volume:
  docker container run -d --name psql2 -v psql:/var/lib/postgresql/data postgres:9.6.1

  D. Check logs for newly created container:
  
  docker container logs psql2