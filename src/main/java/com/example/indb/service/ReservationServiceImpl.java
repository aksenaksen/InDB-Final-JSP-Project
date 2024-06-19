package com.example.indb.service;

import com.example.indb.dto.ReservationDto;
import com.example.indb.jpa.CourseRepository;
import com.example.indb.jpa.ReservationEntity;
import com.example.indb.jpa.ReservationRepository;
import com.example.indb.jpa.UserRepository;
import com.example.indb.vo.RequestReservation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.modelmapper.PropertyMap;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class ReservationServiceImpl implements ReservationService {

    private final ReservationRepository reservationRepository;
    private final UserRepository userRepository;
    private final CourseRepository courseRepository;


    @Override
    public ReservationDto registerReservation(String userId, Long courseId, String hotelId, RequestReservation requestReservation) {

        ModelMapper modelMapper = new ModelMapper();
        modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);

        ReservationDto dto = ReservationDto.builder()
                .userId(userId)
                .checkInDate(requestReservation.getCheckInDate())
                .checkOutDate(requestReservation.getCheckOutDate())
                .courseId(courseId)
                .hotelId(hotelId)
                .build();

        log.info(dto.toString());

        ReservationEntity entity = modelMapper.map(dto, ReservationEntity.class);
        entity.setCourse(courseRepository.findById(courseId).orElse(null));

        entity.setUser(userRepository.findByUserId(userId));

        log.info(entity.toString());

        reservationRepository.save(entity);
        return dto;
    }

    @Override
    public List<ReservationDto> findReservationByUserId(String userId) {

        ModelMapper modelMapper = new ModelMapper();
        modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);
        modelMapper.addMappings(new PropertyMap<ReservationEntity, ReservationDto>() {
            @Override
            protected void configure() {
                map().setCourseId(source.getCourse().getId());
                map().setUserId(source.getUser().getUserId());
            }
        });

        List<ReservationEntity> entities = reservationRepository.findByUser(userRepository.findByUserId(userId));
        List<ReservationDto> dtoList =entities.stream()
                .map(v -> modelMapper.map(v, ReservationDto.class))
                .collect(Collectors.toList());
        log.info(dtoList.toString());

        return dtoList;
    }

    @Override
    public void deleteOneById(Long reservationId) {
        reservationRepository.deleteById(reservationId);
    }
}
