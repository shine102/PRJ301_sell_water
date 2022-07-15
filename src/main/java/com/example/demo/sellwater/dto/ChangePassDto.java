package com.example.demo.sellwater.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ChangePassDto {
    private String username = "shine";
    private String password;
    private String newPassword;
}
