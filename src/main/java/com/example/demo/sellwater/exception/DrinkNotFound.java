package com.example.demo.sellwater.exception;

public class DrinkNotFound extends RuntimeException {
    public DrinkNotFound(String message){
        super(message);
    }
}
