package com.example.indb.dto;


import lombok.Data;

@Data
public class CountryDto {
    private Long id;
    private String title;
    private String name;
    private String notice;
    private String culture;
    private CourseType courseType;
}
