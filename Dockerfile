FROM openjdk:11 AS base
WORKDIR /opt/hello-spring
COPY ./ ./
RUN ./gradlew assemble
# \ && -rm -rf /root/gradle


# ETAPA DE EJECUCION

FROM openjdk:11
WORKDIR /opt/hello-spring
COPY --from=base /opt/gradle-6.7.1/lib/demo-0.0.1-SNAPSHOT.jar ./
CMD java -jar demo-0.0.1-SNAPSHOT.jar
