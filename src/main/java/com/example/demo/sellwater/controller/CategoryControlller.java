package com.example.demo.sellwater.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.sellwater.model.CategoryModel;
import com.example.demo.sellwater.service.CategoryService;

@RestController
public class CategoryControlller {
    
    @Autowired
    private CategoryService categoryService = new CategoryService();

    @PostMapping("/category")
    public CategoryModel saveCategory(@Valid @RequestBody CategoryModel category){
        return categoryService.saveCategory(category);
    }

    @GetMapping("/category")
    public List<CategoryModel> fetchCategoryList(){
        return categoryService.fetchCategoryList();
    }
}
