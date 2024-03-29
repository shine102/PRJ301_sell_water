package com.example.demo.sellwater.dto;

import java.util.ArrayList;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import lombok.Data;

@Data
public class OrderCreateDto {
    @NotBlank
    private String clientName;

    @NotBlank
    @Pattern(regexp = "^0[9853]{1}[0-9]{8}$")
    private String phoneNumber;

    @NotBlank
    private String address;

    @NotEmpty
    private ArrayList<OrderItemDto> itemList;

    private int discount;

    public int getTotalPrice() {
        int totalPrice = 0;
        for (OrderItemDto item : itemList) {
            totalPrice += item.getQuantity() * item.getPrice() * (100 - discount) / 100;
        }
        return totalPrice;
    }


}