FROM openjdk:17

COPY ./sentinel-dashboard.jar /app/sentinel-dashboard.jar

ENV TZ=Asia/Shanghai

ENV JAVA_OPTIONS="-Xms512m -Xmx512m "


EXPOSE 8080

# Configure the JAVA_OPTIONS, you can add -XshowSettings:vm to also display the heap size.

ENTRYPOINT [ "sh", "-c", "java -jar ${JAVA_OPTIONS} /app/sentinel-dashboard.jar"  ]