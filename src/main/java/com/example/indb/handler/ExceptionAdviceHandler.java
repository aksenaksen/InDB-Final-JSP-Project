package com.example.indb.handler;


import com.example.indb.controller.UserController;
import com.example.indb.exception.NotFoundUserException;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ui.Model;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Slf4j
@ControllerAdvice(assignableTypes = {UserController.class})
public class ExceptionAdviceHandler {

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public String BindingError(MethodArgumentNotValidException exception, RedirectAttributes redirectAttributes, HttpServletRequest request){

        List<FieldError> errors = exception.getFieldErrors();
        StringBuilder errorMessage = new StringBuilder();

        for (FieldError error : errors) {
            log.info(error.getDefaultMessage());
            errorMessage.append(error.getDefaultMessage()).append("\\n");
        }

        redirectAttributes.addFlashAttribute("errorMessage", errorMessage.toString());

        String referer = request.getHeader("Referer");
        if (referer != null) {
            return "redirect:" + referer;
        }

        return "redirect:"+request.getContextPath()+"/";
    }
    @ExceptionHandler(NotFoundUserException.class)
    public String UserNotFoundError(NotFoundUserException exception, Model model){

        log.info(exception.getMessage());
        model.addAttribute("errorMessage", exception.getMessage());

        return "Login";
    }
}
