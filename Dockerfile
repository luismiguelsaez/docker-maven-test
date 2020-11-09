FROM maven:3.6.3-openjdk-16-slim AS build

RUN mkdir /build

WORKDIR /build

COPY pom.xml .
ADD src src

RUN mvn package


FROM openjdk:16-slim

COPY --from=build /build/target/my-app-1.0-SNAPSHOT.jar .

ENTRYPOINT ["java","-cp","my-app-1.0-SNAPSHOT.jar","App"]
