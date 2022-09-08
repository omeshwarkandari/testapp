FROM adoptopenjdk/openjdk11

EXPOSE 8080

WORKDIR /app

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

CMD ["java","-jar","app.jar"]  
