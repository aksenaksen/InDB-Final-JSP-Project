package com.example.indb.dto;


import lombok.Data;

import java.util.Date;

@Data
public class CourseDto {

    Long id;
    String cityCode;
    String title;
    String name;
    String notice;

}
