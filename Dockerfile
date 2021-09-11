FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/g18OrderMS-0.0.1-SNAPSHOT.jar /usr/app/ 
WORKDIR /usr/app
EXPOSE 8500
ENV JAVA_OPTS=""
RUN sh -c "touch g18OrderM-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "g18OrderM-0.0.1-SNAPSHOT.jar" ]
