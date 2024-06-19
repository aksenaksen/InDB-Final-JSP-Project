package com.example.indb.dto;

import lombok.*;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ApiErrorResponse {
    private List<ApiError> errors;

    @Getter
    @Setter
    public static class ApiError {
        private int code;
        private String detail;
        private int status;
        private String title;
    }
}
