package sample.app.graalvm.controller;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import sample.app.graalvm.bean.HelloBean;

@Controller("/")
public class HelloController {
    @Get("/hello/{name}")
    public HelloBean sayHello(String name){
        HelloBean helloBean = new HelloBean("Hello ", name);
        return helloBean;
    }
}
