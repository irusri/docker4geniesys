[![](https://images.microbadger.com/badges/image/irusri/docker4geniesys.svg)](https://microbadger.com/images/irusri/docker4geniesys "Get your own image badge on microbadger.com")

docker4geniesys is a set of docker images that include phusion baseimage along with a LAMP stack (Apache, MySQL and PHP) to host the latest version of geniesys website. The following command will start the LAMP server and fetch the latest version of geniesys from Github repository.


Docker installation can be tested or run in several ways.

**1.\) Run using [Play with Docker](https://labs.play-with-docker.com/)**  
The quickest way to test the GenIE-Sys, it takes only a few minutes

[![Try in PWD](https://raw.githubusercontent.com/play-with-docker/stacks/master/assets/images/button.png)](https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/irusri/docker4geniesys/master/pwd-stack.yml#)

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/irusri/docker4geniesys)



**2.\) Run with [already built in Docker image](https://hub.docker.com/r/irusri/docker4geniesys)**                                                                          
The fastest way to run the GenIE-Sys locally or your own server
```text
docker run --rm -i -t -p "80:80" -p "3308:3306" -v ${PWD}/genie:/app -v ${PWD}/mysql:/var/lib/mysql -e MYSQL_ADMIN_PASS="mypass" --name geniesys irusri/docker4geniesys
```

**3.\) Build image locally using [Dockerfile](https://github.com/irusri/docker4geniesys) and run.**  
This is quite slow since you have to build the image locally

```text
git clone https://github.com/irusri/docker4geniesys.git  
cd docker4geniesys  
docker-compose up
```

You can access the MySQL database using `mysql -u admin -pmypass -h localhost -P 3308` or using `http://localhost/phpmyadmin`. As you may noticed here `admin` is the default MySQL username and `mypass` is the default  password. You can change the default password in `docker-compose.yml file.`

👍  You can access the GenIE-Sys on `http://localhost/geniesys/` URL and follow the  [documentation](https://app.gitbook.com/@geniesys/s/geniesys/for-administrators/installation).


Licence & Contributors
======================

This work is under Free and Open Source licence

Contributions are welcome!