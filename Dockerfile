FROM openjdk:8-jre
ENV IGNITE_CLIENT_MODE false
ADD ./target/lab4-1.0-SNAPSHOT.jar /app/lab4-1.0-SNAPSHOT.jar
CMD ["java", "-Xdebug", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005", "-jar", "/app/lab4-1.0-SNAPSHOT.jar"]