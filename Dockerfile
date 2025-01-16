# Step 1: Use an OpenJDK image
FROM openjdk:17-jdk-slim

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy Maven Wrapper and pom.xml
COPY .mvn/ .mvn/
COPY mvnw pom.xml ./

# Step 4: Install Maven dependencies (skip tests)
RUN ./mvnw dependency:resolve

# Step 5: Copy application source code
COPY src/ src/

# Step 6: Build the application
RUN ./mvnw package -DskipTests

# Step 7: Copy the built JAR file to the container
COPY target/*.jar app.jar

# Step 8: Expose the default Spring Boot port
EXPOSE 8080

# Step 9: Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
