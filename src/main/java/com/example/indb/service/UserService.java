package com.example.indb.service;

import com.example.indb.dto.UserDto;
import com.example.indb.jpa.UserEntity;

public interface UserService {

    UserDto createUser(UserDto userDto);

    UserDto getUserById(Long userId);

    Iterable<UserEntity> getUserByAll();

}
