package com.example.indb.vo;

import com.example.indb.annotations.CheckDate;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;
import org.hibernate.annotations.Check;

import java.time.LocalDate;
@Data
public class RequestReservation {

    @CheckDate
    private LocalDate checkInDate;
    @CheckDate
    private LocalDate checkOutDate;

    @NotNull
    private String hotelId;

}
