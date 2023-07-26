FROM openjdk:17

COPY ./sentinel-dashboard.jar /app/sentinel-dashboard.jar

ENV TZ=Asia/Shanghai

ENV JAVA_OPTIONS="-Xms512m -Xmx512m"

ENV PARAMS=""

EXPOSE 8080

# Configure the JAVA_OPTIONS, you can add -XshowSettings:vm to also display the heap size.

ENV JAVA_TOOL_OPTIONS="-agentlib:jdwp=transport=dt_socket,address=*:35005,server=y,suspend=n"

ENTRYPOINT [ "sh", "-c", "java -jar ${JAVA_OPTIONS} /app/sentinel-dashboard.jar ${PARAMS}" ]