package com.example.indb.exception;

import lombok.Getter;

import static com.example.indb.constants.UserConstants.NOT_ALLOWED_DATE;
import static com.example.indb.constants.UserConstants.USER_NOT_FOUND;

@Getter
public class NotAllowedDateException extends RuntimeException{
    private final String message ;

    public NotAllowedDateException(){

        message=NOT_ALLOWED_DATE;
    }
}
