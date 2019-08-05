# Custom TOMCAT Dockerfile
[![N|Solid](https://raw.githubusercontent.com/docker-library/docs/8e31eb93a02d504d0cfe1da435aa31b377fc627d/tomcat/logo.png)](https://hub.docker.com/r/gedzeppelin/custom-tomcat)

My custom Tomcat docker build for serving Java servlet applications. 

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
docker run -d --rm --name <container_name> [--net <docker_network>] -v </path/to/local/project>/target/<project_name>:/usr/local/tomcat/webapps/<tomcat_server_path> -p <8080 | custom_port>:8080 <image_name>[:<image_tag>] 
```

## Manager configuration

You can be edit the *tomcat-users.xml* file in order to change the managers users; for default, this users are:

```xml
<user username="tomcat" password="1234" roles="tomcat"/>
<user username="manager" password="1234" roles="manager-gui,manager-script,manager-jmx,manager-status"/>
<user username="admin" password="1234" roles="admin-gui"/>
```


