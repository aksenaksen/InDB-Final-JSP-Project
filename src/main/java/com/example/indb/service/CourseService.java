package com.example.indb.service;

import com.example.indb.dto.CourseDto;
import com.example.indb.vo.RequestCourse;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface CourseService {

    public CourseDto insertCourse(MultipartFile file, RequestCourse requestCourse, Long countryId) throws IOException;


    List<CourseDto> selectAllCountryById(Long courseId);
}
