package com.example.indb.controller;

import com.example.indb.dto.ReservationDto;
import com.example.indb.exception.NotAllowedDateException;
import com.example.indb.exception.NotFoundUserException;
import com.example.indb.service.ReservationService;
import com.example.indb.vo.RequestReservation;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/reservation")
@RequiredArgsConstructor
public class ReservationController {

    private final ReservationService reservationService;
    @GetMapping("/")
    public String getReservationMain(){
        return "reservation";
    }

    @GetMapping("/{courseId}/{hotelId}")
    public String getReservation(@PathVariable("hotelId") String hotelId, @PathVariable("courseId") Long courseId, Model model){

        model.addAttribute("hotelId",hotelId);
        model.addAttribute("cousreId", courseId);

        return "reservation";
    }
    @PostMapping("/{courseId}/{hotelId}")
    public String doReservation(@PathVariable("courseId")Long courseId,@PathVariable("hotelId") String hotelId, @Valid @ModelAttribute RequestReservation reservationDto, HttpServletRequest request){

        String userId = request.getSession().getAttribute("user").toString();
        if (reservationDto.getCheckInDate().isAfter(reservationDto.getCheckOutDate())){
            throw new NotAllowedDateException();
        }

        reservationService.registerReservation(userId,courseId,hotelId,reservationDto);



        return "reservation";
    }
    @GetMapping("/myReservation")
    public String getMyReservation(HttpServletRequest request , Model model){

        String userId = request.getSession().getAttribute("user").toString();
        List<ReservationDto> dtoList =reservationService.findReservationByUserId(userId);

        model.addAttribute("dtoList", dtoList);


        return "my_reservation";
    }
    @PostMapping("/delete/{reservationId}/{userId}")
    public String deleteMyReservation(HttpServletRequest request,@PathVariable(name = "reservationId") Long reservationId, @PathVariable("userId") String userId){

        if(!userId.equals(request.getSession().getAttribute("user").toString())){
            throw new NotFoundUserException();
        }

        reservationService.deleteOneById(reservationId);
        return "redirect:/reservation/myReservation";
    }

}
