package com.example.dockerlearning.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ExampleController {

    @GetMapping("/helloWorld")
    public String helloWorld() {
        System.out.println("Hello World!!!");
        return "Hello World!!!";
    }
}
