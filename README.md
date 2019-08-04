# Custom TOMCAT Dockerfile
Tomcat docker custom build for SI-2 final project. 

## Requirements
* Obviously, [Docker](https://www.docker.com/), a program that performs operating-system-level virtualization (also known as containerization).

## Instalation

First of all, clone the submodule and cd to it.

```
git clone git@github.com:gedzeppelin/custom-tomcat-dockerfile.git
cd custom-tomcat-dockerfile
```

Then build the docker image and name (and optionally tag) it:

```
docker build --rm -t <image_name>[:<tag>] .
```

Now you can run the tomcat docker image with your local project files:

```
docker run -d --rm --name <container_name> --link <mysql_container_name>:<mysql_container_tag> -v </path/to/project>/target/<project_name>:/usr/local/tomcat/webapps/<tomcat_path> -p 8080[or your preferred port]:8080 <image_name>[:<image_tag>] 
```

## Manager configuration

You can be edit the *tomcat-users.xml* file in order to change the managers users; for default, this users are:

```xml
<user username="tomcat" password="1234" roles="tomcat"/>
<user username="manager" password="1234" roles="manager-gui,manager-script,manager-jmx,manager-status"/>
<user username="admin" password="1234" roles="admin-gui"/>
```


