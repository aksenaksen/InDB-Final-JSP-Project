package com.example.indb.dto;

import lombok.Data;

import java.util.Date;

@Data
public class ReservationDto {
    Long id;
    String username;
    float review;
    Long userId;
    Long courseId;
    Date createdAt;

}
