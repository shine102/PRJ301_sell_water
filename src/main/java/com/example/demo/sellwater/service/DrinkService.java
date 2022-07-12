package com.example.demo.sellwater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.sellwater.exception.CategoryNotFound;
import com.example.demo.sellwater.exception.DrinkNotFound;
import com.example.demo.sellwater.model.DrinkModel;
import com.example.demo.sellwater.repository.DrinkRepo;

@Service
public class DrinkService {
    
    @Autowired
    private DrinkRepo drinkRepo;

    public List<DrinkModel> fetchDrinkList() {
        List<DrinkModel> drinkList = drinkRepo.findAll();
        if(drinkList.isEmpty()){
            throw new DrinkNotFound("Add more drink you stupid :))");
        }
        return drinkList;
    }

    public List<DrinkModel> fetchDrinkListByCategoryId(Long id) {
        List<DrinkModel> drinkList = drinkRepo.findByCategoryId(id);
        if (drinkList.isEmpty()) {
            throw new CategoryNotFound("Category not found");
        }

        return drinkList;
    }

    public void saveDrink(DrinkModel drink) {
    }

    public void modifyDrink(DrinkModel drink) {
    }
}
