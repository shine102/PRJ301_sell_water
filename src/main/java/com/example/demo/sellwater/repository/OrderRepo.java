package com.example.demo.sellwater.repository;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.example.demo.sellwater.model.OrderModel;

@Repository
public interface OrderRepo extends JpaRepository<OrderModel, String>{

    Optional<OrderModel> findById(String orderId);

	Optional<ArrayList<OrderModel>> findAllByPhone(String phoneNumber);
    
}
