FROM tomcat:9-jre8-alpine
MAINTAINER Mahesh
ADD target/JavaHelloWorldApp.war /usr/local/tomcat/webapps/
EXPOSE 8081