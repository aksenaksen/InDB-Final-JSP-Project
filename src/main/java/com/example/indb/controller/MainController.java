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

}
