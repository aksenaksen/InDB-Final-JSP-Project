package com.example.indb.jpa;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;
import java.util.Date;

@Entity
@Data
@Table(name = "RESERVATIONS_1")
public class ReservationEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column(name = "check_out_date",nullable = false)
    LocalDate checkOutDate;

    @Column(name = "check_in_date",nullable = false)
    LocalDate checkInDate;

    @Column(name = "hotelId")
    String hotelId;

    @ManyToOne
    @JoinColumn(name = "course_id")
    private CourseEntity course;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;
}
