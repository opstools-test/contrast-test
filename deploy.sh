#!/bin/bash -x

cd ~/
pwd

# jenkins to HOST
docker cp devops-toolchain_jenkins_1:/var/jenkins_home/workspace/2.0/target/provider-search-0.0.1-tom.war .

# HOST to tomcat
docker cp provider-search-0.0.1-tom.war tomcat:/usr/local/tomcat/webapps/provider-search-0.0.1-tom.war

sleep 10
docker stop tomcat
sleep 10
docker start tomcat
