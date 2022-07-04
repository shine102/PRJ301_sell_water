package com.example.demo.sellwater.controller;

// import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    
    @GetMapping("/")
    public String index(Model model){
        return "index";
    }

    @GetMapping("/drinks")
    public String drinks(Model model){
        // ArrayList<String> category = new ArrayList<String>();
        
        return "drinks";
    }

    @GetMapping("/blogs")
    public String blogs(Model model){
        return "blogs";
    }
}
