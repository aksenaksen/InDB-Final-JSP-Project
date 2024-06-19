package com.example.indb.service;

import com.example.indb.dto.CourseDto;
import com.example.indb.dto.ReviewDto;
import com.example.indb.vo.RequestCourse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface CourseService {

    public CourseDto insertCourse(MultipartFile file, RequestCourse requestCourse, Long countryId) throws IOException;


    List<CourseDto> selectAllCountryById(Long courseId);

    @Transactional
    CourseDto selectOneCourseByCountryIdAndCourseId(Long courseId, Long countryId);

    @Transactional
    Page<ReviewDto> findAllByCourse(Long courseId, Pageable pageable);

    @Transactional
    void insertReview(Long courseId, String review, String userId);
}
