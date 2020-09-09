Docker4GenIECMS is a set of docker images that include phusion baseimage (16.04 and 18.04 varieties) along with a LAMP stack (Apache, MySQL and PHP) to host the latest version of geniesys website. The following command will start the LAMP server and fetch the latest version of geniesys from Github repository.

**To run with docker-compose**  
`git clone https://github.com/irusri/Docker4GenIECMS.git`  
`docker-compose up`

***
**To run without docker-compose**  
The following commands might be useful when you prefer to run step by step approach without using the docker-compose.

**Build Docker image using the Dockerfile**  
`docker build -t geniesys -f ./Dockerfile  .`  

**RUN Docker image**  
`docker run --rm -i -t -p "80:80" -p "3308:3306" -v ${PWD}/geniecms:/app  -v ${PWD}/mysql:/var/lib/mysql  -e MYSQL_ADMIN_PASS="mypass" --name geniecms geniesys`  


**To make a development environment**   
The following commands are useful to make a development environment.

`git clone https://github.com/irusri/docker4geniecms.git`  
`cd docker4geniecms`  
`git submodule add -f https://github.com/irusri/geniesys.git`  
`docker build -t geniesys -f ./Dockerfile  .`  
`docker run --rm -i -t -p "80:80" -p "3308:3306" -v ${PWD}/geniecms:/app  -v ${PWD}/mysql:/var/lib/mysql  -e MYSQL_ADMIN_PASS="mypass" --name geniesys geniesys`  

**General commands for Docker**  
**To remove all containers**  
`sudo apt-get install docker-ce docker-ce-cli containerd.io`

**To remove all containers**  
`docker rm -f $(docker ps -a -q)` 
  
**To See/Remove all volumes respectively**  
`docker volume ls/prune`  

**To remove all images**  
`docker rmi -f $(docker images -q)`
 

