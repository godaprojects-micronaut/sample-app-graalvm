# Simple Micronaut app with GraalVM
#### Steps to execute
1. create a maven package
```
mvn clean package
```
2. Install graalvm
```
sdk install java 20.1.0.r8-grl
sdk use java 20.1.0.r8-grl
gu install native-image
```
3. Create the navite executable
```
native-image --no-server -cp target/sample-app-graalvm-0.1.jar
```
4. Run the executable
```
./sample-app-graalvm
```

## Feature http-client documentation

- [Micronaut Micronaut HTTP Client documentation](https://docs.micronaut.io/latest/guide/index.html#httpClient)

