FROM gradle:7.3.3 AS gradle
WORKDIR /example
COPY . .
RUN gradle installDist

FROM redhat/ubi8-minimal:8.5-218
COPY --from=gradle /opt/java/openjdk /java
ENV JAVA_HOME /java
COPY --from=gradle /example/build/install ./
ENTRYPOINT /example/bin/example
