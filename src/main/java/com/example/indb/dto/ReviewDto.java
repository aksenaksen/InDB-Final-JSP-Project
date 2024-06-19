package com.example.indb.dto;

import lombok.Data;

@Data
public class ReviewDto {


    Long id;

    Long userId;

    String username;

    String review;

    Long courseId;


}
