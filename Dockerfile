
FROM adoptopenjdk:11-jre-hotspot

WORKDIR /app

COPY /home/123nareen2001gm/Downloads/petadoption-master/ /app/

ENTRYPOINT ["java", "Main"]
