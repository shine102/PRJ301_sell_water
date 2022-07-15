package com.example.demo.sellwater.dto;

import lombok.Data;

@Data
public class UpdateDrinkDto {
    private Long id;
    private String drinkName;
    private String description;
    private String imageLink;
    private int price;
}
