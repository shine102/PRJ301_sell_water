package com.example.demo.sellwater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.sellwater.model.DrinkModel;
import com.example.demo.sellwater.repository.DrinkRepo;

@Service
public class DrinkService {
    
    @Autowired
    private DrinkRepo drinkRepo;

    public List<DrinkModel> fetchDrinkList() {
        return drinkRepo.findAll();
    }

    public List<DrinkModel> fetchDrinkListByCategoryId(Long id) {
        return drinkRepo.findByCategoryId(id);
    }
}
