
**To Run**  
`docker-compose up`

---------------------------------------
**To BUILD**  
`docker build -t genie -f ./Dockerfile  .`  

**To RUN without composer**  
`docker run --rm -i -t -p "80:80" -p "3308:3306" -v ${PWD}/geniecms:/app  -v ${PWD}/mysql:/var/lib/mysql  -e MYSQL_ADMIN_PASS="mypass" --name geniecms genie`  

**To remove all containers**  
`docker rm -f $(docker ps -a -q)` 
  
**To See/Remove all volumes respectively**  
`docker volume ls/prune`  

**To remove all images**  
`docker rmi -f $(docker images -q)`

**Development**   
**Please comment supporting_files/run.sh line for downloading geniecms**  
`git clone https://github.com/irusri/docker4geniecms.git`  
`cd docker4geniecms`  
`git submodule add -f https://github.com/irusri/geniesys.git`  
`docker build -t genie -f ./Dockerfile  .`  
`docker run --rm -i -t -p "80:80" -p "3308:3306" -v ${PWD}/geniecms:/app  -v ${PWD}/mysql:/var/lib/mysql  -e MYSQL_ADMIN_PASS="mypass" --name geniecms genie`  
 

