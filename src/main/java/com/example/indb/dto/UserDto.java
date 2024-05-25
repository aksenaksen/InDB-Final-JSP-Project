package com.example.indb.dto;

import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

import java.util.Date;


@Data
public class UserDto {

    Long id;

    String username;

    String userId;

    String age;

    String driving;

    String password;

    String email;


}
