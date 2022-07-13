package com.example.demo.sellwater.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.sellwater.model.OrderModel;

@Repository
public interface OrderRepo extends JpaRepository<OrderModel, Long>{
    
}
