package com.example.indb.jpa;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

import java.util.Date;

@Entity
@Data
@Table(name = "course")
public class CourseEntity {

    @Id
    Long id;
    @Column(name = "title",nullable = false)
    String title;
    @Column(name = "course",nullable = false)
    String course;
    @Column(name = "created_at",nullable = false)
    Date createdAt;


}
