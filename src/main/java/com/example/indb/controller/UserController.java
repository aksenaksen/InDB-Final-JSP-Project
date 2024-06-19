package com.example.indb.controller;

import com.example.indb.dto.UserDto;
import com.example.indb.service.UserService;
import com.example.indb.vo.RequestLogin;
import com.example.indb.vo.RequestUser;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/user")
@Slf4j
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;
    private final ModelMapper mapper = new ModelMapper();

    @GetMapping("/create")
    public String getCreateUser(){
        return "create";
    }

    @PostMapping("/create")
    public String postCreateUser(@Valid RequestUser requestUser){

        log.info(String.valueOf(requestUser));
        mapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);
        UserDto userdto = mapper.map(requestUser, UserDto.class);
        userService.createUser(userdto);

        return "redirect:/user/login";
    }
    @GetMapping("/login")
    public String getLogin(){
        return "Login";
    }

    @PostMapping("/login")
    public String postLogin(@Valid RequestLogin requestLogin, HttpServletRequest request){

        UserDto userDto = userService.login(requestLogin);
        log.info(String.valueOf(userDto) + "is login now");
        request.getSession().setAttribute("user",userDto.getUserId());

        return "redirect:/index";
    }
    @GetMapping("/logout")
    public String postLogout(HttpServletRequest request){


        request.getSession().setAttribute("user",null);
        return "redirect:/index";
    }

//    내정보
    @GetMapping("/info/{userId}")
    public String getUserInfo(@PathVariable(name = "userId") Long userId){

        userService.getUserById(userId);

        return null;
    }


}
