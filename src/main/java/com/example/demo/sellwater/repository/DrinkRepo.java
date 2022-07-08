package com.example.demo.sellwater.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.sellwater.model.DrinkModel;

public interface DrinkRepo extends JpaRepository<DrinkModel, Long> {

    List<DrinkModel> findByCategoryId(Long id);
    
}
