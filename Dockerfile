FROM maven:3.8.6-eclipse-temurin-17-alpine AS builder
COPY pom.xml pom.xml
COPY src src/
RUN mvn clean package

FROM openjdk:17-oracle
COPY --from=builder target/hlt-api-gateway-service-0.0.1-SNAPSHOT.jar hlt-api-gateway-service-0.0.1-SNAPSHOT.jar
EXPOSE 8088
ENTRYPOINT ["java", "-jar", "hlt-api-gateway-services-0.0.1-SNAPSHOT.jar"]