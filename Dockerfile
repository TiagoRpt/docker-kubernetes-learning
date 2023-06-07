#from with an existing image on docker hub, for java projects we need jdk
FROM eclipse-temurin:8-jdk-jammy

#working directory to do the run and cmd commands
WORKDIR /app

# COPY <src> <dest> , <src> is the path of the source folder containing files to be copied.
# <dest> is the destination of the COPY command inside the docker container. This is the path where files are to be copied
COPY . /app

# command for building our project first
RUN ./mvnw dependency:resolve

# command to start our application
CMD ["./mvnw", "spring-boot:run"]
