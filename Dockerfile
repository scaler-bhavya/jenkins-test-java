# Stage 1: Build the application
FROM maven:3.10.0-jdk-11 as build

# Copy the project files to the container
COPY ./ /usr/src/myapp

# Set the working directory
WORKDIR /usr/src/myapp

# Use Maven to compile the code and package it into a JAR file with dependencies
RUN mvn clean package

# Stage 2: Setup the runtime environment
FROM openjdk:11-jre-slim

# Copy the JAR file from the build stage
COPY --from=build /usr/src/myapp/target/java-hello-world-1.0-SNAPSHOT-jar-with-dependencies.jar /usr/app/java-hello-world.jar

# Set the working directory for the application
WORKDIR /usr/app

# Command to execute the application
CMD ["java", "-jar", "java-hello-world.jar"]
