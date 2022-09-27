FROM maven:3-eclipse-temurin-8-alpine 
COPY . .
RUN mvn clean package


FROM tomcat:8.0.20-jre8
RUN cp target/maven-web-application*.war /usr/local/tomcat/webapps/maven-web-application.war
