package com.example.demo.sellwater.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.sellwater.model.OrderItemModel;

public interface OrderItemRepo extends JpaRepository<OrderItemModel, Long> {

    @Query("SELECT o FROM OrderItemModel o WHERE o.order.id = ?1")
    ArrayList<OrderItemModel> findByOrder_Id(String orderId);
    
}
