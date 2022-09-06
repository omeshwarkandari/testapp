FROM adoptopenjdk/openjdk11

EXPOSE 8080
VOLUME /tmp
WORKDIR app
ADD dockerapp-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
