package com.example.demo.sellwater.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.sellwater.model.CategoryModel;

public interface CategoryRepo extends JpaRepository<CategoryModel, Long> {
    
}
