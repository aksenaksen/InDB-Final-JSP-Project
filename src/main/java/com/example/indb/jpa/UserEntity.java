package com.example.indb.jpa;

import jakarta.persistence.*;
import lombok.Data;
import org.hibernate.annotations.ColumnDefault;

import java.util.Date;

@Entity
@Data
@Table(name = "users")
public class UserEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column(name = "username",nullable = false,unique = true)
    String username;

    @Column(name = "user_id",nullable = false,unique = true)
    String userId;

    @Column(name="age" ,nullable = false)
    String age;

    @Column(name = "password",nullable = false,unique = true)
    String password;

    @Column(name = "email", nullable = false, unique = true)
    String email;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "created_at")
    Date created_at;

    @PrePersist
    public void onCreate(){
        created_at = new Date();
    }
}
