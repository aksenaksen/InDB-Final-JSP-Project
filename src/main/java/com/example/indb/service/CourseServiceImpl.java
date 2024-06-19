package com.example.indb.service;

import com.example.indb.dto.CourseDto;
import com.example.indb.dto.ReviewDto;
import com.example.indb.jpa.*;
import com.example.indb.vo.RequestCourse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class CourseServiceImpl implements CourseService{
    private final UserRepository userRepository;

    private final CourseRepository courseRepository;
    private final CountryRepository countryRepository;
    private final FileService fileService;
    private final ReviewRepository reviewRepository;
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

    @Transactional
    @Override
    public CourseDto selectOneCourseByCountryIdAndCourseId(Long courseId, Long countryId){

        CourseEntity courseEntity = courseRepository.findById(courseId).orElseThrow(() -> new RuntimeException());
        if(courseEntity.getCountry().getId() != countryId){
            throw new RuntimeException();
        }
        modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);

        return modelMapper.map(courseEntity,CourseDto.class);
    }

    @Transactional
    @Override
    public Page<ReviewDto> findAllByCourse(Long courseId, Pageable pageable){
        return reviewRepository.findByCourseOrderById(courseRepository.findById(courseId).get(),pageable)
                .map(v -> modelMapper.map(v, ReviewDto.class));
    }

    @Transactional
    @Override
    public void insertReview(Long courseId, String review, String userId){
        ReviewEntity rev = ReviewEntity.builder()
                .review(review)
                .course(courseRepository.findById(courseId).get())
                .user(userRepository.findByUserId(userId))
                .build();

        reviewRepository.save(rev);
    }

}
