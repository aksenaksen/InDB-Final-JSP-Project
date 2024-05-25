package com.example.indb.controller;

import com.example.indb.dto.ReservationDto;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/reservation")
public class ReservationController {

    @GetMapping("/{courseId}")
    public String getReservation(@PathVariable("courseId") Long courseId){
        return "reservation";
    }
    @PostMapping("/")
    public String doReservation(@PathVariable("courseId") Long courseId, @RequestBody ReservationDto reservationDto){
        return "reservation";
    }
}
