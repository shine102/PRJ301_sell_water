package com.example.demo.sellwater.service;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.sellwater.dto.OrderCreateDto;
import com.example.demo.sellwater.model.OrderItemModel;
import com.example.demo.sellwater.model.OrderModel;
import com.example.demo.sellwater.repository.DrinkRepo;
import com.example.demo.sellwater.repository.OrderItemRepo;
import com.example.demo.sellwater.repository.OrderRepo;

@Service
public class OrderService {

    @Autowired
    OrderRepo orderRepo;
    @Autowired
    DrinkRepo drinkRepo;
    @Autowired
    OrderItemRepo orderItemRepo;
    
    public OrderModel searchOrder(String orderId) {
        OrderModel order = orderRepo.findById(orderId).orElse(null);     
        return order;
    }

    public String createOrder(@Valid OrderCreateDto order) {
        OrderModel orderModel = new OrderModel();
        orderModel.setAddress(order.getAddress());
        orderModel.setClientName(order.getClientName());
        orderModel.setPhone(order.getPhoneNumber());
        List<OrderItemModel> orderItemList = new ArrayList<OrderItemModel>(); 
        
        order.getItemList().forEach(item -> {
            OrderItemModel orderItem = new OrderItemModel(item.getQuantity(), drinkRepo.findById(Long.parseLong(item.getId())).orElse(null), orderModel);
            orderItemList.add(orderItem);
        });
        // save order_table
        orderModel.setOrderItem(orderItemList);
        orderRepo.save(orderModel);

        // save order_item_table
        order.getItemList().forEach(item -> {
            OrderItemModel orderItem = new OrderItemModel(item.getQuantity(), drinkRepo.findById(Long.parseLong(item.getId())).orElse(null), orderRepo.findById(orderModel.getId()).orElse(null));
            orderItemRepo.save(orderItem);
        });

        return orderModel.getId();
    }

    public List<OrderModel> fetchOrderList() {
        List<OrderModel> list = orderRepo.findAll();
        return list;
    }

    public boolean clientCancelOrder(String orderId) {
        return false;
    }

    public boolean approvedOrder(String orderId) {
        OrderModel orderModel = orderRepo.findById(orderId).orElse(null);
        if(orderModel == null) {
            return false;
        } else {
            String orderStatus = orderModel.getStatus();
            if(orderStatus.equals("pending")) {
                orderModel.setStatus("approved");
                orderRepo.save(orderModel);
                return true;
            } else {
                return false;
            }
        }
    }

    public boolean deliveredOrder(String orderId) {
        return false;
    }

    public boolean adminCancelOrder(String orderId) {
        return false;
    }
    
}
