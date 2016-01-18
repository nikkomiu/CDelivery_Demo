# Continuous Delivery Demo

[![Build Status](http://206.128.135.248:8080/buildStatus/icon?job=CDelivery_Demo)](http://206.128.135.248:8080/job/CDelivery_Demo/)
[![](https://badge.imagelayers.io/nikkoamiu/cdelivery_demo:latest.svg)](https://imagelayers.io/?images=nikkoamiu/cdelivery_demo:latest 'Get your own badge on imagelayers.io')

**TODO:** Give overview of application

## Docker Configuration

The configuration for the Docker container of the application.

### Docker Repository

The Docker repository is on the Docker Hub **[nikkoamiu/cdelivery_demo](https://hub.docker.com/r/nikkoamiu/cdelivery_demo/)**.

### Environment Variables

- `DB_HOSTNAME`: The hostname of the MySQL database instance (default: `localhost`)
- `DB_DATABASE`: The database to connect to in the MySQL instance (default: `cdelivery_demo_db`)
- `DB_USERNAME`: The username of the MySQL user to connect as (default: `dynatrace`)
- `DB_PASSWORD`: The password of the MySQL user to connect as (default: `!dynatrace`)
- `DT_AGENT_NAME`: The name to give the agent in Dynatrace Application Monitoring (default: `CDelivery_Demo`)
- `DT_COLLECTOR_ADDRESS`: The address of the Dynatrace Collector (default: `127.0.0.1`)
