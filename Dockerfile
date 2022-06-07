FROM amazoncorretto:11-alpine-jdk AS JDK

MAINTAINER Nikolay Beloglazov "nickolai.beloglazov@gmail.com"

RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring

COPY ./target/nasaservice.jar nasaservice.jar
ENTRYPOINT ["java", "-jar", "/nasaservice.jar", "com.home.nasaservice.invoker.Swagger2SpringBoot -Dlog4j2.formatMsgNoLookups=true"]