package com.example.indb.jpa;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;

@Entity
@Data
@Table(name = "COURSE")
public class CourseEntity {

    @Id
    @Column(name = "course_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @Column(name = "title",nullable = false,unique = true)
    String title;
    @Column(name = "name",nullable = false,unique = true)
    String name;
    @Column(name = "notice",nullable = false)
    String notice;

    @ManyToOne
    @JoinColumn(name = "country_id")
    private CountryEntity country;


}
