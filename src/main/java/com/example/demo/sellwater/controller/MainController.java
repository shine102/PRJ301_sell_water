package com.example.demo.sellwater.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.sellwater.model.BlogModel;
import com.example.demo.sellwater.model.CategoryModel;
import com.example.demo.sellwater.service.BlogService;
import com.example.demo.sellwater.service.CategoryService;
import com.example.demo.sellwater.service.DrinkService;

@Controller
public class MainController {
    
    @Autowired
    private CategoryService categoryService = new CategoryService();

    @Autowired
    private BlogService blogService = new BlogService();

    @Autowired
    private DrinkService drinkService = new DrinkService();

    @GetMapping("/")
    public String index(Model model){
        try {
            List<CategoryModel> categoryList = categoryService.fetchCategoryList();
            List<BlogModel> blogList = blogService.fetchBlogList().subList(0, 12);

            model.addAttribute("categoryList", categoryList);
            model.addAttribute("blogList", blogList);
        } catch (Exception e) {
            System.out.println("bruh");
        }
        
        return "index";
    }

    @GetMapping("/about")
    public String about(Model model){
        return "about";
    }

    @GetMapping("/drink")
    public String drinks(Model model){
        List<CategoryModel> categoryList = categoryService.fetchCategoryList();
        model.addAttribute("categoryList", categoryList);


        return "drinks";
    }

    @GetMapping("/blog")
    public String blog(Model model){

        List<BlogModel> blogList = blogService.fetchBlogList();
        model.addAttribute("blogList", blogList);
        return "blogs";
    }

}
