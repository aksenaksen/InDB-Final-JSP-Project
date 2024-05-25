package com.example.indb.controller;

import com.example.indb.dto.UserDto;
import com.example.indb.service.UserService;
import com.example.indb.vo.RequestUser;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/user")
@Slf4j
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping("/create")
    public String getCreateUser(){
        return "create";
    }

    @PostMapping("/create")
    public String postCreateUser(RequestUser requestUser){

        log.info(String.valueOf(requestUser));

        ModelMapper mapper = new ModelMapper();
        UserDto userdto = mapper.map(requestUser, UserDto.class);
        userService.createUser(userdto);

        return null;
    }

//    내정보
    @GetMapping("/info/{userId}")
    public String getUserInfo(@PathVariable(name = "userId") Long userId){

        userService.getUserById(userId);

        return null;
    }


}
