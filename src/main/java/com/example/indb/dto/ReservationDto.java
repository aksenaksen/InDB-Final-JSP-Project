package com.example.indb.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.Date;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ReservationDto {

    Long id;

    String hotelId;

    String userId;

    LocalDate checkInDate;

    LocalDate checkOutDate;

    Long courseId;

}
