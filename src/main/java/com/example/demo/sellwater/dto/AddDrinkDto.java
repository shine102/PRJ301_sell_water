package com.example.demo.sellwater.dto;

import lombok.Data;

@Data
public class AddDrinkDto {
    private String drinkName;
    private int price;
    private String imageLink;
    private String description;
    private Long categoryId;
}
