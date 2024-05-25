package com.example.indb.annotations;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import static com.example.indb.constants.UserConstants.USERID_PATTERN;
import static com.example.indb.constants.UserConstants.USERNAME_PATTERN;

public class UserIdValidator implements ConstraintValidator<UserId , String> {
    @Override
    public boolean isValid(String s, ConstraintValidatorContext constraintValidatorContext) {

        if (!isValidUserId(s)){
            return false;
        }
        return true;
    }

    private boolean isValidUserId(String userId) {

        return userId.matches(USERID_PATTERN);
    }
}
