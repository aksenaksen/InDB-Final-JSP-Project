package com.example.indb.jpa;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;

@Entity
@Data
@Table(name = "reservation")
public class ReservationEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column(name = "username", unique = true, nullable = false)
    String username;

    @Column(name = "review", unique = true, nullable = false)
    float review;

    @Column(name = "user_id", unique = true, nullable = false)
    Long userId;

    @Column(name = "course_id", unique = true, nullable = false)
    Long courseId;

    @Column(name = "created_at", nullable = false)
    Date createdAt;
}
