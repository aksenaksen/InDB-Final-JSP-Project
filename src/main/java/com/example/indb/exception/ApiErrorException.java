package com.example.indb.exception;

import com.example.indb.dto.ApiErrorResponse;
import lombok.Getter;

@Getter
public class ApiErrorException extends RuntimeException{
    private final int code;
    private final String detail;

    private final int status;

    private final String title;

    public ApiErrorException(ApiErrorResponse response){
        this.code = response.getErrors().get(0).getCode();
        this.detail = response.getErrors().get(0).getDetail();
        this.status = response.getErrors().get(0).getStatus();
        this.title = response.getErrors().get(0).getTitle();
    }
}
