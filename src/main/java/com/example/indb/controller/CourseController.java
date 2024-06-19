package com.example.indb.controller;

import com.example.indb.dto.*;
import com.example.indb.jpa.UserRepository;
import com.example.indb.service.CountryService;
import com.example.indb.service.CourseService;
import com.example.indb.util.AmadeusUtil;
import com.example.indb.vo.RequestCountry;
import com.example.indb.vo.RequestCourse;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping("/course")
public class CourseController {
    private final UserRepository userRepository;


    private final CountryService countryService;
    private final CountryService ccountryService;
    private final CourseService courseService;
    private final AmadeusUtil amadeusUtil;
    @GetMapping("/lists")
    public String getCourseList(){
        return "course_list";
    }

    @GetMapping("/oversea")
    public String getOverSea() {
        return "oversea";
    }



    @GetMapping("/detail/{countryId}")
    public String getCountryById(@PathVariable(name = "countryId") Long countryId, Model model){

        CountryDto countryDto = countryService.selectOneCountry(countryId);
        List<CourseDto> courseDtoList = courseService.selectAllCountryById(countryId);

        model.addAttribute("countryDto", countryDto);
        model.addAttribute("courseList", courseDtoList);

        return "course_page";
    }

    @GetMapping("/detail/{countryId}/{courseId}")
    public String getCourseDetail(@PathVariable(name = "countryId")Long countryId,@PathVariable(name = "courseId") Long courseId,Model model){

        CourseDto courseDto = courseService.selectOneCourseByCountryIdAndCourseId(courseId, countryId);
        ApiResponse response = amadeusUtil.getHotelList(courseDto.getCityCode()).block();

        ModelMapper modelMapper = new ModelMapper();
        modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);

        List<HotelDto> hotelDto = response.getData().stream()
                .map(dto -> modelMapper.map(dto, HotelDto.class))
                .collect(Collectors.toList());
        log.info(hotelDto.toString());

        model.addAttribute("hotel", hotelDto);
        model.addAttribute("courseId",courseId);

        return "hotel_detail";
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
    @GetMapping("/{courseId}/review")
    public String getReview(@PathVariable(name = "courseId") Long courseId, @PageableDefault(page = 0,size = 2) Pageable pageable, Model model){
        Page<ReviewDto> reviewDto = courseService.findAllByCourse(courseId,pageable);
        log.info(reviewDto.toString());
        model.addAttribute("reviewDto", reviewDto);
        model.addAttribute("courseId", courseId);
        return "review";
    }
    @GetMapping("/{courseId}/insert/review")
    public String getReviewInsert(@PathVariable(name = "courseId") Long courseId, Model model){
        model.addAttribute("courseId",courseId);
        return "review_insert";
    }
    @PostMapping("/{courseId}/insert/review")
    public String postReview(@PathVariable(name = "courseId") Long courseId,@RequestParam String review, HttpServletRequest request){

        if(request.getSession().getAttribute("user")==null){
            return "error";
        }
        String userId = (String) request.getSession().getAttribute("user");
        courseService.insertReview(courseId,review,userId);
        return "redirect:/index";
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

        return "redirect:/index";
    }
    @GetMapping("/list_oversea")
    public String countryList(Model model){

        List<CountryDto> countryDtoList = countryService.selectAllCountry();
        log.info(String.valueOf(countryDtoList.size()));
        model.addAttribute("countryList",countryDtoList);

        return "oversea_list";
    }




}
