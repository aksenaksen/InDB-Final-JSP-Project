package com.example.indb.handler;


import com.example.indb.controller.CourseController;
import com.example.indb.controller.ReservationController;
import com.example.indb.controller.UserController;
import com.example.indb.exception.ApiErrorException;
import com.example.indb.exception.NotAllowedDateException;
import com.example.indb.exception.NotFoundUserException;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.resource.NoResourceFoundException;

import java.util.List;

import static com.example.indb.constants.UserConstants.INVALID_CITYCODE;

@Slf4j
@ControllerAdvice
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
    public String UserNotFoundError(NotFoundUserException exception, RedirectAttributes redirectAttributes,HttpServletRequest request){

        log.info(exception.getMessage());
        redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());

        String referer = request.getHeader("Referer");
        if (referer != null) {
            return "redirect:" + referer;
        }

        return "redirect:"+request.getContextPath()+"/";
    }

    @ExceptionHandler(NotAllowedDateException.class)
    public String NotAllowedDateError(NotAllowedDateException exception, RedirectAttributes redirectAttributes, HttpServletRequest request){

        log.info(exception.getMessage());
        redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());

        String referer = request.getHeader("Referer");
        if (referer != null) {
            return "redirect:" + referer;
        }

        return "redirect:"+request.getContextPath()+"/";
    }

    @ExceptionHandler(ApiErrorException.class)
    public String ApiError(ApiErrorException exception, Model model, RedirectAttributes redirectAttributes, HttpServletRequest request){

        log.info("log Error Code : {}",exception.getCode());
        log.info("log Error : {}",exception.getDetail());

        redirectAttributes.addFlashAttribute("errorMessage", INVALID_CITYCODE);
        model.addAttribute("errorMessage",INVALID_CITYCODE);

        return "redirect:/course/list_oversea";
    }
    @ExceptionHandler(NoHandlerFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public String handle404(NoHandlerFoundException e){
        return "redirect:/error/404";
    }

    @ExceptionHandler(NoResourceFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public String handle404(NoResourceFoundException e){
        return "redirect:/error/404";
    }

    @ExceptionHandler(Exception.class)
    public String handleException(Exception exception, RedirectAttributes redirectAttributes, HttpServletRequest request) {

        log.error("An unexpected error occurred: {}", exception.getMessage());

        return "redirect:/error" ;
    }
}
