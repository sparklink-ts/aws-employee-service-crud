# Use the Eclipse Temurin JDK 17 image
#FROM eclipse-temurin:17-jdk
# Use the Amazon Corretto JDK 17 image
FROM amazoncorretto:17

# Employee Service Default Port
#EXPOSE 9000
# Tomcat Default Port
#EXPOSE 8080
# AWS Elastic Beanstalk Default Port
EXPOSE 5000

ADD target/aws-employee-service-crud.jar aws-employee-service-crud.jar
ENTRYPOINT ["java", "-jar","/aws-employee-service-crud.jar"]