# Drop running container
docker container rm -f wiki

# Generated static files
docker run --rm   --volume="$PWD:/srv/jekyll"   -it jekyll/builder:$JEKYLL_VERSION  jekyll build

cd _site

# Run site
docker container run -d --name wiki -p 80:80 -v $(pwd):/usr/share/nginx/html nginx
