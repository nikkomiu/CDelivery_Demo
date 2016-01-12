FROM tomcat:7-jre7
MAINTAINER Nikko Miu <nikkoamiu@gmail.com>


# Set Environment Variables
ENV DB_HOSTNAME localhost
ENV DB_DATABASE cdelivery_demo_db
ENV DB_USERNAME dynatrace
ENV DB_PASSWORD !dynatrace
