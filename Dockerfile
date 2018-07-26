FROM maven:latest as builder
ADD pom.xml /app/
WORKDIR /app
RUN mvn dependency:go-offline
ADD src /app/src
RUN mvn package

FROM openjdk:8-jre-alpine
VOLUME /tmp
COPY --from=builder /app/target/hello-word-0.0.1-SNAPSHOT.jar /hello.jar
ENTRYPOINT java -jar /hello.jar