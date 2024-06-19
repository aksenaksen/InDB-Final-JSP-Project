package com.example.indb.vo;

import lombok.Data;

import java.time.Instant;

@Data
public class RequestFirstApi {

    private String access_token;

    private int expires_in;
}
