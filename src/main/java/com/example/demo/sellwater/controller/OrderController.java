package com.example.demo.sellwater.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.sellwater.dto.OrderCreateDto;
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
        return "find_order";
    }

    @GetMapping("/order/create")
    public String viewOrderPage() {
        return "checkout";
    }

    @PostMapping("/order/create")
    public @ResponseBody String createOrder(@Valid @RequestBody OrderCreateDto order, Model model){
        String id = orderService.createOrder(order);
        if (id == null){
            return "error";
        } else {
            return id;
        }
    }

    @PostMapping("/order/cancel")
    public @ResponseBody String cancelOrder(String orderId){
        if (orderService.clientCancelOrder(orderId)){
            return "success";
        } else {
            return "error";
        }
    }
}
