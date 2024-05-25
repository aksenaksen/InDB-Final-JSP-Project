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

    @GetMapping("/{courseId}")
    public String getCourse(@PathVariable Long courseId){
        return "course";
    }

}
