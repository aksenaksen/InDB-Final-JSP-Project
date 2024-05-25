package com.example.indb.annotations;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import static com.example.indb.constants.UserConstants.PASSWORD_PATTERN;
import static com.example.indb.constants.UserConstants.USERNAME_PATTERN;

public class UsernameValidator implements ConstraintValidator<Username , String> {
    @Override
    public boolean isValid(String s, ConstraintValidatorContext constraintValidatorContext) {

        if (!isValidUsername(s)){
            return false;
        }
        return true;
    }

    private boolean isValidUsername(String username) {

        return username.matches(USERNAME_PATTERN);
    }
}
