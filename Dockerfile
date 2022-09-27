FROM maven:3-eclipse-temurin-8-alpine as maven
COPY . .
RUN mvn clean package


FROM tomcat:8.0.20-jre8
COPY --from=maven target/maven-web-application*.war /usr/local/tomcat/webapps/maven-web-application.war
