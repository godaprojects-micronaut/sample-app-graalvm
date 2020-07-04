FROM oracle/graalvm-ce:20.1.0-java8 as graalvm
RUN gu install native-image

COPY . /home/app/sample-app-graalvm
WORKDIR /home/app/sample-app-graalvm

RUN native-image --no-server -cp target/sample-app-graalvm-*.jar

FROM frolvlad/alpine-glibc
RUN apk update && apk add libstdc++
EXPOSE 8080
COPY --from=graalvm /home/app/sample-app-graalvm/sample-app-graalvm /app/sample-app-graalvm
ENTRYPOINT ["/app/sample-app-graalvm"]
