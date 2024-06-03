package com.example.indb.service;

import com.example.indb.dto.CountryDto;
import com.example.indb.vo.RequestCountry;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface CountryService {

    public CountryDto insertCountry(RequestCountry requestCountry, MultipartFile file) throws IOException;
    public List<CountryDto> selectAllCountry();

    public CountryDto selectOneCountry(Long id);

}
