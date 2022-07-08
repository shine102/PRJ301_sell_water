package com.example.demo.sellwater.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.demo.sellwater.model.BlogModel;
import com.example.demo.sellwater.model.CategoryModel;
import com.example.demo.sellwater.model.DrinkModel;
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
        List<CategoryModel> categoryList = categoryService.fetchCategoryList();
        List<BlogModel> blogList = blogService.fetchBlogList();
        if (blogList.size() > 12) {
            blogList = blogList.subList(0, 12);
        }

        List<DrinkModel> drinkList = drinkService.fetchDrinkListByCategoryId(categoryList.get(0).getId());

        if (drinkList.size() > 10) {
            drinkList = drinkList.subList(0, 10);
        }

        model.addAttribute("drinkList", drinkList);
        model.addAttribute("categoryList", categoryList);
        model.addAttribute("blogList", blogList);
        
        return "index";
    }

    @GetMapping("/{categoryId}")
    public String category(Model model, @PathVariable("categoryId") Long categoryId){
        List<CategoryModel> categoryList = categoryService.fetchCategoryList();
        List<BlogModel> blogList = blogService.fetchBlogList();
        if (blogList.size() > 12) {
            blogList = blogList.subList(0, 12);
        }

        List<DrinkModel> drinkList = drinkService.fetchDrinkListByCategoryId(categoryId);
        if (drinkList.size() > 10) {
            drinkList = drinkList.subList(0, 10);
        }
        model.addAttribute("drinkList", drinkList);
        model.addAttribute("categoryList", categoryList);
        model.addAttribute("blogList", blogList);
        return "index";
    }

    @GetMapping("/about")
    public String about(Model model){
        return "about";
    }

    @GetMapping("/drink")
    public String redirectDrink(){
        return "redirect:/drink/1";
    }

    @GetMapping("/drink/{drinkId}")
    public String drinks(Model model, @PathVariable("drinkId") Long drinkId){
        List<CategoryModel> categoryList = categoryService.fetchCategoryList();
        
        List<DrinkModel> drinkList = drinkService.fetchDrinkListByCategoryId(drinkId);

        model.addAttribute("drinkList", drinkList);
        model.addAttribute("categoryList", categoryList);

        return "drinks";
    }

    @GetMapping("/blog")
    public String blog(Model model){

        List<BlogModel> blogList = blogService.fetchBlogList();
        model.addAttribute("blogList", blogList);
        return "blogs";
    }

    @GetMapping("/blog/{blogId}")
    public String article(Model model, @PathVariable Long blogId){
        BlogModel article = blogService.fetchBlogById(blogId);
        model.addAttribute("article", article);
        return "article";
    }

}
