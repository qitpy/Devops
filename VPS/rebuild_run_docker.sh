cd [source_folder]
git pull
docker container stop [container_name]
docker rm [container_name]
docker build -t kod-backoffice .
docker run -d --name [container_name] -p [port_number]:80 [image_name]:latest
