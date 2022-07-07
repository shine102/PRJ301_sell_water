package com.example.demo.sellwater.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.sellwater.model.BlogModel;

public interface BlogRepo extends JpaRepository<BlogModel, Long> {

}
