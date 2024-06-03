package com.example.indb.dto;

public enum CourseType {
    DOMESTIC(0),
    OVERSEA(1);

    private final int value;

    CourseType(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }
}
