package com.tommtang.helloworld.controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
    
    @GetMapping("/greeting")
    public String greeting(String name) {
        return name != null ? "Hello ".concat(name).concat("!") : "Hello World!";
    }

}
