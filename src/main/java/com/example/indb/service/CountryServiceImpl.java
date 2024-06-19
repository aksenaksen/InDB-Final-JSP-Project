package com.example.indb.service;

import com.example.indb.dto.CountryDto;
import com.example.indb.jpa.CountryEntity;
import com.example.indb.jpa.CountryRepository;
import com.example.indb.vo.RequestCountry;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Slf4j
@Service
@RequiredArgsConstructor
public class CountryServiceImpl implements CountryService{

    private final CountryRepository countryRepository;
    private final FileService fileService;
    private final ModelMapper modelMapper = new ModelMapper();

    @Transactional
    @Override
    public CountryDto insertCountry(RequestCountry requestCountry, MultipartFile file) throws IOException {

        fileService.saveFile(file,"country_image",requestCountry.getTitle());
        modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);
        CountryEntity entity = modelMapper.map(requestCountry, CountryEntity.class);
        log.info(entity.toString());
        countryRepository.save(entity);

        CountryDto countryDto = modelMapper.map(entity, CountryDto.class);

        return countryDto;
    }

    @Transactional
    @Override
    public List<CountryDto> selectAllCountry() {

        return countryRepository.findAll().stream()
                .map(v -> modelMapper.map(v,CountryDto.class))
                .collect(Collectors.toList());
    }

    @Transactional
    @Override
    public CountryDto selectOneCountry(Long id) {

        Optional<CountryEntity> country = countryRepository.findById(id);

        if(country.isPresent()){
            return modelMapper.map(country.get(),CountryDto.class);
        }

        return null;
    }

}
