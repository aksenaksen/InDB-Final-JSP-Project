package com.example.indb.annotations;


import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = UsernameValidator.class)
public @interface Username {

    String message() default "아이디는 최소 1자 최대 30자 이하의 영문 또는 한글을 입력해야합니다.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
