package com.example.indb.exception;

import lombok.Getter;

import static com.example.indb.constants.UserConstants.USER_NOT_FOUND;

@Getter
public class NotFoundUserException extends RuntimeException{
    private final String message;

    public NotFoundUserException(){

        message=USER_NOT_FOUND;
    }
}
