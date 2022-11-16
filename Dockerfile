#cmd : docker build -t cloud-gateway-service .
FROM eclipse-temurin:8-jdk-alpine
EXPOSE 9191
VOLUME /tmp
COPY target/*.jar cloud-gateway-service.jar
ENTRYPOINT ["java","-jar","/cloud-gateway-service.jar"]