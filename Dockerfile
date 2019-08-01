 FROM tomcat:alpine
 MAINTAINER Stuti Rastogi
 WORKDIR $JENKINS_HOME/workspace/stuti-pipeline/
 COPY com.baeldung:parent-modules:1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/  // source is the jenkins
 RUN chmod -R 777
 /usr/local/tomcat/webapps/com.baeldung:parent-modules:1.0.0-SNAPSHOT.war
 EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
