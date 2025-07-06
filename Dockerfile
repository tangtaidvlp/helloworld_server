# Step 1: Choose a suitable base image for your Java application.
# Use a lightweight OpenJDK image.
# 'slim-buster' or 'slim-bullseye' are good choices for smaller image size.
# Replace '17' with your Java version (e.g., 11, 21).
FROM openjdk:17-jdk-slim

# Step 2: Set the working directory inside the container.
# This is where your application files will reside.
WORKDIR /app

# Step 3: Copy your compiled Java application (JAR file) into the container.
# Assumes your JAR is in the 'target/' directory (common for Maven).
# Adjust 'target/your-java-app.jar' to your actual JAR path and name.
COPY /build/libs/helloworld-0.0.1-SNAPSHOT.jar helloworld-0.0.1-SNAPSHOT.jar

# Step 4: Expose the port(s) your Java application listens on.
# For Spring Boot, the default is 8080. If your app uses a different port, change it.
EXPOSE 8080

# Step 5: Define the command to run your Java application when the container starts.
# This uses the 'java -jar' command with your application's JAR file.
ENTRYPOINT ["java", "-jar", "helloworld-0.0.1-SNAPSHOT.jar"]

# Optional: Add environment variables
# ENV JAVA_OPTS="-Xmx512m -Xms256m"

# Optional: For a WAR file and an embedded Tomcat/Jetty, this is often sufficient.
# For external Tomcat, see example below.