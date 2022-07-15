package com.example.demo.sellwater.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
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
        OrderCreateDto order = orderService.fetchOrder(orderId);
        if(order == null){
            model.addAttribute("error", "Order not found");
            return "find_order";
        }
        OrderModel orderModel = orderService.fetchOrderById(orderId);
        model.addAttribute("orderId", orderId);
        model.addAttribute("order", order);
        model.addAttribute("total", order.getTotalPrice());
        model.addAttribute("status", orderModel.getStatus());
        model.addAttribute("correct", true);
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

    @GetMapping("/order/cancel")
    public @ResponseBody String cancelOrder(@RequestParam String orderId){
        if (orderService.cancelOrder(orderId)){
            return "success";
        } else {
            return "error";
        }
    }

    @GetMapping("/order/rating/{orderId}")
    public @ResponseBody String rateOrder(@PathVariable String orderId, @RequestParam String rating, @RequestParam String comment){
        if (orderService.rateOrder(orderId, Integer.parseInt(rating), comment)){
            return "success";
        } else {
            return "error";
        }
    }
}
