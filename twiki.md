

To start docker image:

docker run  -dt -p 8080:80 -v /home/data/:/data -e URL_HOST=http://192.168.1.8:8080/ -e ADMIN_PW=pass1234 mhvelplund/twiki-docker

Rest of the steps to be found within wiki.