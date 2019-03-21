#Dockerfile
# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/s315615-spring-docker-server-project-1.0.0.war

# Add the application's jar to the container
ADD ${JAR_FILE} s315615-spring-docker-server-project-1.0.0.war

# Run the jar file
ENTRYPOINT ["java","-jar","/s315615-spring-docker-server-project-1.0.0.war"]

