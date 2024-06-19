package com.example.indb.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface CourseRepository extends JpaRepository<CourseEntity, Long> {
    List<CourseEntity> findCourseEntitiesByCountry(CountryEntity countryEntity);


}
