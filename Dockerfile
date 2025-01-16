# Use official OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy Maven wrapper and pom.xml to container
COPY .mvn/ .mvn/
COPY mvnw pom.xml ./

# Run Maven build
RUN ./mvnw clean package -DskipTests

# Copy the jar file to the container
COPY target/*.jar app.jar

# Expose the port Spring Boot uses
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
