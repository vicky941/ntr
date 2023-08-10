FROM ubuntu:latest
MAINTAINER devops venkyreddy72879@gmail.com
RUN apt-get update
RUN apt install default-jdk  -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.78/bin/apache-tomcat-9.0.78.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.78.tar.gz
RUN mv apache-tomcat-9.0.78/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
