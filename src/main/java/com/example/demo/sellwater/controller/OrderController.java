package com.example.demo.sellwater.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.sellwater.model.OrderModel;
import com.example.demo.sellwater.service.OrderService;

@Controller
public class OrderController {
    
    @Autowired
    OrderService orderService = new OrderService();

    @GetMapping("/order")
    public String viewOrderSearchPage() {
        return "find_order";
    }

    @PostMapping("/order")
    public String searchOrder(String orderId, Model model){
        OrderModel order = orderService.searchOrder(orderId);
        if (order == null){
            model.addAttribute("error", "No order available!");
        }
        model.addAttribute("order", order);
        return "order";
    }

    @GetMapping("/order/create")
    public String viewOrderPage() {
        return "checkout";
    }

    @PostMapping("/order/create")
    public String createOrder(OrderModel orderModel, Model model){
        orderService.createOrder(orderModel);
        return "checkout";
    }
}
