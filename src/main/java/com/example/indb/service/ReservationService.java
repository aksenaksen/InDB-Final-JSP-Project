package com.example.indb.service;

import com.example.indb.dto.ReservationDto;
import com.example.indb.vo.RequestReservation;
import org.springframework.stereotype.Service;

import java.util.List;

public interface ReservationService {


    ReservationDto registerReservation(String userId, Long courseId, String hotelId, RequestReservation requestReservation);
    List<ReservationDto> findReservationByUserId(String userId);

    void deleteOneById(Long reservationId);

}
