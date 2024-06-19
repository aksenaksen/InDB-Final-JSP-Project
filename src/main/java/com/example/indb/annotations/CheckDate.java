package com.example.indb.annotations;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = CheckOutValidator.class)
public @interface CheckDate {

    String message() default "날짜 형식이 잘못되었습니다. 날짜를 다시 입력해주세요";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}