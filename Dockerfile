FROM gcr.io/distroless/java:11
#FROM openjdk:11-jre-slim
COPY build/libs/test-rest.jar app.jar
EXPOSE 8080
#RUN addgroup --system --gid 1002 app && adduser --system --uid 1002 --gid 1002 appuser
USER 1002
CMD ["/app.jar"]
#ENTRYPOINT java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar
