FROM tomcat:8.5.37-jre8-alpine

MAINTAINER Saurabh


WORKDIR /usr/local/tomcat

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY companyNews.war /usr/local/tomcat/webapps/
COPY static.zip /usr/local/tomcat/webapps/

RUN unzip /usr/local/tomcat/webapps/companyNews.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

