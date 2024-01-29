# Use an official Tomcat runtime as a parent image
FROM tomcat:9.0-jre11

# Set the working directory to the Tomcat webapps directory
WORKDIR /usr/local/tomcat/webapps/

# Copy the war file into the container
COPY target/MMT-Cash-Memo-1.0-SNAPSHOT.war .

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]



## Stage 1: Build the application
#FROM maven:3.8.4-openjdk-11 AS builder
#
## Set the working directory
#WORKDIR /app
#
## Copy the project files and download dependencies
#COPY pom.xml .
#
#COPY src ./src
#
## Build the application
#RUN mvn clean package -DskipTests
#
## Stage 2: Create the final image with only necessary artifacts
#FROM tomcat:9.0-jre11
#
## Set the working directory to the Tomcat webapps directory
#WORKDIR /usr/local/tomcat/webapps/
#
## Copy the WAR file from the builder stage
#COPY --from=builder /app/target/your-web-app.war .
#
## Expose the default Tomcat port
#EXPOSE 8080
#
## Start Tomcat
#CMD ["catalina.sh", "run"]
