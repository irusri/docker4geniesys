
**To BUILD**  
docker build -t genie -f ./Dockerfile  .  

**To RUN**  
docker run --rm -i -t -p "80:80" -p "3308:3306" -v ${PWD}/geniecms:/app  -v ${PWD}/mysql:/var/lib/mysql  -e MYSQL_ADMIN_PASS="mypass" --name geniecms genie  

**To remove all containers**  
docker rm -f $(docker ps -a -q) 
  
**To See/Remove all volumes respectively**  
docker volume ls/prune  

**To remove all images**  
docker rmi -f $(docker images -q)

