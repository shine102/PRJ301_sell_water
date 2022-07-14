package com.example.demo.sellwater.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.sellwater.model.OrderItemModel;

public interface OrderItemRepo extends JpaRepository<OrderItemModel, Long> {
    
}
