#cmd : docker build -t cloud-gateway-service .
FROM openjdk:17-jdk-slim

ENV HOS=192.168.29.141
ENV TOKN=173.17.0.6
ENV TASK=173.17.0.8
ENV ASC=173.17.0.7
ENV SKI=173.17.0.4
ENV FIM=127.0.0.1
ENV CNF=173.17.0.5

# Set the working directory to /app
WORKDIR /app

# Copy the Eureka server JAR file to the container
COPY target/gateway-service.jar /app

# Expose the default Eureka server port
EXPOSE 9191

# Start the Eureka server
CMD ["java", "-jar", "gateway-service.jar"]