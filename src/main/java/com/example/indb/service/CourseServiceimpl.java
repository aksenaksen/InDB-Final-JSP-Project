package com.example.indb.service;

import com.example.indb.dto.CourseDto;
import com.example.indb.jpa.CountryEntity;
import com.example.indb.jpa.CountryRepository;
import com.example.indb.jpa.CourseEntity;
import com.example.indb.jpa.CourseRepository;
import com.example.indb.vo.RequestCourse;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CourseServiceimpl implements CourseService{

    private final CourseRepository courseRepository;
    private final CountryRepository countryRepository;
    private final FileService fileService;
    private final ModelMapper modelMapper = new ModelMapper();

    @Transactional
    @Override
    public CourseDto insertCourse(MultipartFile file,RequestCourse requestCourse, Long countryId) throws IOException {

        fileService.saveFile(file,"course_image",requestCourse.getTitle());

        Optional<CountryEntity> country = countryRepository.findById(countryId);
        this.modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);
        CourseEntity courseEntity = modelMapper.map(requestCourse, CourseEntity.class);

        courseEntity.setCountry(country.get());
        courseRepository.save(courseEntity);

        return modelMapper.map(courseEntity, CourseDto.class);
    }
    @Transactional
    @Override
    public List<CourseDto> selectAllCountryById(Long courseId){


        return courseRepository.findCourseEntitiesByCountry(countryRepository.findById(courseId).get()).stream()
                .map(v -> modelMapper.map(v,CourseDto.class))
                .collect(Collectors.toList());
    }
}
