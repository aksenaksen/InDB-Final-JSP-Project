package com.example.indb.annotations;


import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = UserIdValidator.class)
public @interface UserId {

    String message() default "아이디는 최소 7자 최대 30자 이하의 영문과 숫자 여야합니다.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
