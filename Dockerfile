FROM tomcat:7-jre7
MAINTAINER Nikko Miu <nikkoamiu@gmail.com>


# Set Environment Variables
ENV DB_HOSTNAME localhost
ENV DB_DATABASE cdelivery_demo_db
ENV DB_USERNAME dynatrace
ENV DB_PASSWORD !dynatrace

RUN rm -rf /usr/local/tomcat/webapps/ROOT/*

COPY target/cdelivery_demo /usr/local/tomcat/webapps/ROOT
