FROM openjdk:11-jre-slim
WORKDIR /app
COPY target/java-hello-world-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar
CMD ["java", "-jar", "app.jar"]