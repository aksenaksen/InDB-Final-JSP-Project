package com.example.indb.vo;


import com.example.indb.annotations.Password;
import com.example.indb.annotations.UserId;
import com.example.indb.annotations.Username;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class RequestUser {


    @Username
    String username;

    @UserId
    String userId;

    @NotNull(message = "age is not null")
    int age;

    @NotNull(message = "driving in not null")
    int driving;

    @Password
    String password;

    @Email
    String email;


}
