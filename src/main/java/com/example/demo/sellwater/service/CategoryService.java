package com.example.demo.sellwater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.sellwater.model.CategoryModel;
import com.example.demo.sellwater.repository.CategoryRepo;

@Service
public class CategoryService {

    @Autowired
    private CategoryRepo categoryRepo;

    public CategoryModel saveCategory(CategoryModel category) {
        return categoryRepo.save(category);
    }

    public List<CategoryModel> fetchCategoryList() {
        return categoryRepo.findAll();
    }

    public CategoryModel fetchCategoryById(Long categoryId) {
        return categoryRepo.findById(categoryId).orElse(null);
    }
    
}
