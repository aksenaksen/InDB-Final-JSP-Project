package com.example.indb.service;

import com.example.indb.dto.UserDto;
import com.example.indb.exception.NotFoundUserException;
import com.example.indb.jpa.UserEntity;
import com.example.indb.jpa.UserRepository;
import com.example.indb.vo.RequestLogin;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService{

    private final ModelMapper mapper = new ModelMapper();

    private final UserRepository userRepository;

//    private final BCryptPasswordEncoder passwordEncoder;
    @Override
    @Transactional
    public UserDto createUser(UserDto userDto) {

        ModelMapper mapper = new ModelMapper();
        mapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);
        UserEntity userEntity = mapper.map(userDto, UserEntity.class);

        userRepository.save(userEntity);

        UserDto returnUserDto = mapper.map(userEntity, UserDto.class);
        return returnUserDto;

    }

    @Override
    public UserDto getUserById(Long userId) {
        Optional<UserEntity> userEntity = userRepository.findById(userId);
//
//        if(userEntity ==null){
//            throw new UsernameNotFoundException("User not found");
//        }

        UserDto userDto = mapper.map(userEntity, UserDto.class);
        return userDto;
    }

    @Override
    public Iterable<UserEntity> getUserByAll() {
        return userRepository.findAll();
    }

    @Override
    public UserDto login(RequestLogin requestLogin) {

        UserEntity userEntity = userRepository.findByUserId(requestLogin.getUserId());

        if(userEntity == null || !userEntity.getPassword().equals(requestLogin.getPassword())){
            throw new NotFoundUserException();
        }

        UserDto userDto = mapper.map(userEntity, UserDto.class);
        return userDto;
    }
}
