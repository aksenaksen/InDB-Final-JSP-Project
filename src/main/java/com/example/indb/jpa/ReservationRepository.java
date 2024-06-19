package com.example.indb.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface ReservationRepository extends JpaRepository<ReservationEntity , Long> {

    List<ReservationEntity> findByUser(UserEntity user);
}
