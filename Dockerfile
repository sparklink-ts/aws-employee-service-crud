# Use the Eclipse Temurin JDK 17 image
#FROM eclipse-temurin:17-jdk
# Use the Amazon Corretto JDK 17 image
FROM amazoncorretto:17
EXPOSE 9000
ADD target/employee-service-v2.0.0-snapshot.jar employee-service-v2.0.0-snapshot.jar
ENTRYPOINT ["java", "-jar","/employee-service-v2.0.0-snapshot.jar"]