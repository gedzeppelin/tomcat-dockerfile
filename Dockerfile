FROM tomcat:latest
MAINTAINER Gedy Palomino <gedy.palomino@gmail.com>

RUN \
	rm -f /usr/local/tomcat/webapps/manager/META-INF/context.xml

COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/

CMD ["catalina.sh", "run"]

EXPOSE 8080
