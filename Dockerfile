# 1️⃣ Use a lightweight Java runtime image
FROM eclipse-temurin:17-jre-alpine


# 2️⃣ Set working directory inside container
WORKDIR /app


# 3️⃣ Copy the JAR built by Maven into the container
COPY target/my-java-app-1.0.0.jar app.jar


# 4️⃣ Expose application port (change if your app uses another port)
EXPOSE 8080


# 5️⃣ Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
