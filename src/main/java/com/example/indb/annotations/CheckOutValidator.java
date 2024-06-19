package com.example.indb.annotations;


import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.time.LocalDate;

public class CheckOutValidator implements ConstraintValidator<CheckDate, LocalDate> {
    @Override
    public boolean isValid(LocalDate checkoutDate, ConstraintValidatorContext context) {
        if (!isValidCheckout(checkoutDate)) {
            return false;
        }
        return true;
    }

    private boolean isValidCheckout(LocalDate checkoutDate) {
        return checkoutDate.isAfter(LocalDate.now());
    }
}