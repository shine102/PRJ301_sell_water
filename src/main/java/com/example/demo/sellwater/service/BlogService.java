package com.example.demo.sellwater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.sellwater.model.BlogModel;
import com.example.demo.sellwater.repository.BlogRepo;

@Service
public class BlogService {
    @Autowired 
    private BlogRepo blogRepo;

    public List<BlogModel> fetchBlogList() {
        return blogRepo.findAll();
    }


}
