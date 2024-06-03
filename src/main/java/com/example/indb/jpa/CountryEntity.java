package com.example.indb.jpa;

import com.example.indb.dto.CourseType;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "COUNTRY")
public class CountryEntity {

    @Id
    @Column(name = "country_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "title", nullable = false,unique = true)
    private String title;
    @Column(name = "name", nullable = false, unique = true)
    private String name;
    @Column(name ="notice" , nullable = false)
    private String notice;
    @Column(name ="culture" ,nullable = false)
    private String culture;
    @Column(name ="course_type",nullable = false)
    private CourseType courseType;


}
