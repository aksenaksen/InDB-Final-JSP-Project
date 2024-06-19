package com.example.indb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @GetMapping("/")
    public String main(){
        return "mainpage";
    }

    @GetMapping("/index")
    public String getIndex(){
        return "index";
    }

    @GetMapping("/error")
    public String Error(){
        return "error";
    }
    @GetMapping("/error/404")
    public String notFoundError(){
        return "404";
    }
}
