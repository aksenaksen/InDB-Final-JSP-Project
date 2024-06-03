package com.example.indb.vo;

import com.example.indb.dto.CourseType;
import lombok.Data;

@Data
public class RequestCountry {
    private Long id;
    private String title;
    private String name;
    private String notice;
    private String culture;
    private CourseType courseType;
}
