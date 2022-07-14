package com.example.demo.sellwater.dto;

import lombok.Data;

@Data
public class OrderItemDto {
    private String id;
    private String name;
    private int quantity;
    private int price;
}
