package com.example.indb.vo;

import com.example.indb.annotations.Password;
import com.example.indb.annotations.UserId;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;

import static com.example.indb.constants.UserConstants.PASSWORD_NULL;
import static com.example.indb.constants.UserConstants.USERID_NULL;

@Data
public class RequestLogin {

    @NotNull(message = USERID_NULL)
    @Size(min=1 , message = USERID_NULL)
    private String userId;

    @NotNull(message = PASSWORD_NULL)
    @Size(min=1 , message = PASSWORD_NULL)
    private String password;
}
