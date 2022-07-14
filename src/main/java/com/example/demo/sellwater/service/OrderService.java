package com.example.demo.sellwater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.sellwater.model.OrderModel;
import com.example.demo.sellwater.repository.OrderRepo;

@Service
public class OrderService {

    @Autowired
    OrderRepo orderRepo;
    
    public OrderModel searchOrder(String orderId) {
        return null;
    }

    public void createOrder(OrderModel orderModel) {
    }

    public List<OrderModel> fetchOrderList() {
        return null;
    }
    
}
