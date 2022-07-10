package com.example.demo.sellwater.exception;

public class CategoryNotFound extends RuntimeException {
    public CategoryNotFound(String message){
        super(message);
    }
}
