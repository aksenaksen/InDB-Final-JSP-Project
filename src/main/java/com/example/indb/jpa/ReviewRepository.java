package com.example.indb.jpa;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface ReviewRepository extends JpaRepository<ReviewEntity,Long> {
    Page<ReviewEntity> findByCourseOrderById(CourseEntity course,Pageable pageable);
}
