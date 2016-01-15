FROM tomcat:7-jre7
MAINTAINER Nikko Miu <nikkoamiu@gmail.com>


# Set Environment Variables
ENV DB_HOSTNAME localhost
ENV DB_DATABASE cdelivery_demo_db
ENV DB_USERNAME dynatrace
ENV DB_PASSWORD !dynatrace
ENV DT_AGENT_NAME CDelivery_Demo
ENV DT_COLLECTOR_ADDRESS 127.0.0.1

RUN curl https://downloads.dynatrace.com/services/AgentDownload.aspx?version=6.2.0.1239\&os=linux\&arch=x64\&techtype=java > /opt/agent.jar
RUN java -jar /opt/agent.jar -n -t /opt/dynatrace

RUN rm -rf /usr/local/tomcat/webapps/ROOT/*

COPY target/cdelivery_demo /usr/local/tomcat/webapps/ROOT

CMD echo "export CATALINA_OPTS=-agentpath:/opt/dynatrace/agent/lib64/libdtagent.so=name=$DT_AGENT_NAME,server=$DT_COLLECTOR_ADDRESS" > bin/setenv.sh &&\
    catalina.sh run
