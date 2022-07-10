package com.example.demo.sellwater.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.demo.sellwater.model.UserModel;
import com.example.demo.sellwater.repository.UserRepo;

@Service
public class UserService {
    @Autowired
    UserRepo userRepo;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public boolean checkUser(String username, String password) {
        UserModel user = userRepo.findByUsername(username);  
        if (user == null) {
            return false;
        }

        return passwordEncoder.matches(password, user.getPassword());
    }

    public void changePass(String username, String newPassword) {
        UserModel user = userRepo.findByUsername(username);
        user.setPassword(passwordEncoder.encode(newPassword));
        userRepo.save(user);
    }
}
