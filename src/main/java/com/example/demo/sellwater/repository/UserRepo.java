package com.example.demo.sellwater.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.sellwater.model.UserModel;

@Repository
public interface UserRepo extends JpaRepository<UserModel, Long> {
    UserModel findByUsername(String username);
    
    

}
    

