package com.example.indb.controller;

import com.example.indb.dto.CountryDto;
import com.example.indb.dto.CourseDto;
import com.example.indb.service.CountryService;
import com.example.indb.service.CourseService;
import com.example.indb.service.CourseServiceimpl;
import com.example.indb.vo.RequestCountry;
import com.example.indb.vo.RequestCourse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Objects;

@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping("/course")
public class CourseController {

    private final CountryService countryService;
    private final CourseService courseService;

    @GetMapping("/lists")
    public String getCourseList(){
        return "course_list";
    }

    @GetMapping("/oversea")
    public String getOverSea() {
        return "oversea";
    }

    @GetMapping("/domestic")
    public String getDomestic() {
        return "domestic";
    }

    @GetMapping("/airline")
    public String getAirline() {
        return "airline";
    }

    @GetMapping("/hotel")
    public String getHotel() {
        return "hotel";
    }

    @GetMapping("/japan")
    public String getJapan() {
        return "japan";
    }

    @GetMapping("/detail/{countryId}")
    public String getCountryById(@PathVariable(name = "countryId") Long countryId, Model model){

        CountryDto countryDto = countryService.selectOneCountry(countryId);
        List<CourseDto> courseDtoList = courseService.selectAllCountryById(countryId);

        model.addAttribute("countryDto", countryDto);
        model.addAttribute("courseList", courseDtoList);

        return "course_page";
    }
    @GetMapping("/{courseId}/insert")
    public String getInsertCourse(@PathVariable(name = "courseId") Long courseId,Model model){
        model.addAttribute("courseId", courseId);
        return "courseInsert";
    }
    @PostMapping("/{courseId}/insert")
    public String postInsertCourse(@PathVariable(name = "courseId") Long courseId, MultipartFile file, RequestCourse requestCourse) throws IOException {

        if (!Objects.requireNonNull(file.getContentType()).startsWith("image")){
            throw new RuntimeException();
        }

        CourseDto courseDto =courseService.insertCourse(file, requestCourse, courseId);
        log.info(courseDto.toString());

        return "courseInsert";
    }


    @GetMapping("/insert")
    public String getInsertCountry(){
        return "countryInsert";
    }

    @PostMapping("/insert")
    public String postInsertCountry(RequestCountry requestCountry, @RequestParam("file") MultipartFile file) throws IOException {

        if (!Objects.requireNonNull(file.getContentType()).startsWith("image")){
            throw new RuntimeException();
        }

        CountryDto countryDto = countryService.insertCountry(requestCountry, file);
        log.info(countryDto.toString());

        return "/";
    }
    @GetMapping("/list_oversea")
    public String countryList(Model model){

        List<CountryDto> countryDtoList = countryService.selectAllCountry();
        log.info(String.valueOf(countryDtoList.size()));
        model.addAttribute("countryList",countryDtoList);

        return "oversea_list";
    }


}
