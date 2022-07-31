FROM adoptopenjdk/maven-openjdk11 AS MAVEN_BUILD

MAINTAINER Patrick Joly

COPY pom.xml /build/
COPY src /build/src/

WORKDIR /build/
RUN mvn package

FROM adoptopenjdk/openjdk11

WORKDIR /app

COPY --from=MAVEN_BUILD /build/target/spring-boot-jpa-h2-0.0.1-SNAPSHOT.jar /app/

ENTRYPOINT ["java", "-jar", "spring-boot-jpa-h2-0.0.1-SNAPSHOT.jar"]