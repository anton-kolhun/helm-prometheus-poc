FROM openjdk:8-jre
WORKDIR /app
VOLUME ["/app"]
COPY target/prometheus-poc-1.0.jar app.jar
RUN sh -c 'touch app.jar'
ENTRYPOINT java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 -Djava.security.egd=file:/dev/./urandom -jar app.jar