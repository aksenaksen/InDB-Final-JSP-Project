package com.example.indb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/course")
public class CourseController {

    @GetMapping("/lists")
    public String getCourseList(){
        return "course_list";
    }

    @GetMapping("/oversea")
    public String getOverSea() {
        return "oversea";
    }

    @GetMapping("/domestic")
    public String getDomestic() {
        return "domestic";
    }

    @GetMapping("/airline")
    public String getAirline() {
        return "airline";
    }

    @GetMapping("/hotel")
    public String getHotel() {
        return "hotel";
    }

    @GetMapping("/japan")
    public String getJapan() {
        return "japan";
    }


}
