package com.example.demo.sellwater.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.sellwater.model.DrinkModel;

public interface DrinkRepo extends JpaRepository<DrinkModel, Long> {
    
}
