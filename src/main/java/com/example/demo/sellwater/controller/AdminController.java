package com.example.demo.sellwater.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.sellwater.dto.ChangePassDto;
import com.example.demo.sellwater.dto.UserDto;
import com.example.demo.sellwater.model.BlogModel;
import com.example.demo.sellwater.model.CategoryModel;
import com.example.demo.sellwater.model.DrinkModel;
import com.example.demo.sellwater.model.OrderModel;
import com.example.demo.sellwater.service.BlogService;
import com.example.demo.sellwater.service.CategoryService;
import com.example.demo.sellwater.service.DrinkService;
import com.example.demo.sellwater.service.OrderService;
import com.example.demo.sellwater.service.UserService;


@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private CategoryService categoryService = new CategoryService();
    @Autowired
    private BlogService blogService = new BlogService();
    @Autowired
    private DrinkService drinkService = new DrinkService();
    @Autowired 
    private UserService userService = new UserService();
    @Autowired
    private HttpSession session;
    @Autowired
    private OrderService orderService = new OrderService();

    
    @GetMapping("/login")
    public String getLogin() {
        return "admin_login";
    }
    
    @PostMapping("/login")
    public String postLogin(UserDto user, Model model, RedirectAttributes redirectAttrs) { 
        if (userService.checkUser(user.getUsername().trim(), user.getPassword())) {
            session.setAttribute("username", "admin");
            return "redirect:/admin/panel";
        } else {
            redirectAttrs.addFlashAttribute("error", "Wrong username or password");
            return "redirect:/admin/login";
        }
    }

    @GetMapping("/panel")
    public String panel(Model model, @RequestParam(defaultValue = "1") Long categoryId) {
        if(checkLogin()){
            return "redirect:/admin/login";
        } else {
            List<CategoryModel> categoryList = categoryService.fetchCategoryList();
            List<DrinkModel> drinkList = drinkService.fetchDrinkListByCategoryId(categoryId);
            List<BlogModel> blogList = blogService.fetchBlogList();
            List<OrderModel> orderList = orderService.fetchOrderList();
            model.addAttribute("blogList", blogList);
            model.addAttribute("drinkList", drinkList);
            model.addAttribute("categoryList", categoryList);
            model.addAttribute("orderList", orderList);
            return "admin_panel";
        }
        
    }
    
    @PostMapping("/panel/drink")
    public String addDrink(@RequestBody DrinkModel drink) {
        if(checkLogin()){
            return "redirect:/admin/login";
        } else {
            drinkService.saveDrink(drink);
            return "redirect:/admin/panel";
        }
    }

    @PutMapping("/panel/drink")
    public String modifyDrink(@RequestBody DrinkModel drink) {
        if(checkLogin()){
            return "redirect:/admin/login";
        } else {
            drinkService.modifyDrink(drink);
            return "redirect:/admin/panel";
        }
    }

    @DeleteMapping("/panel/drink")
    public String deleteDrink(@RequestBody DrinkModel drink) {
        if(checkLogin()){
            return "redirect:/admin/login";
        } else {
            drinkService.saveDrink(drink);
            return "redirect:/admin/panel";
        }
    }

    @PostMapping("/panel/blog")
    public String addBlog(@RequestBody BlogModel blog) {
        if(checkLogin()){
            return "redirect:/admin/login";
        } else {
            blogService.saveBlog(blog);
            return "redirect:/admin/panel";
        }
    }

    @PutMapping("/panel/blog")
    public String modifyBlog(@RequestBody BlogModel blog) {
        if(checkLogin()){
            return "redirect:/admin/login";
        } else {
            blogService.modifyBlog(blog);
            return "redirect:/admin/panel";
        }
    }

    @DeleteMapping("/panel/blog")
    public String deleteBlog(@RequestBody BlogModel blog) {
        if(checkLogin()){
            return "redirect:/admin/login";
        } else {
            blogService.saveBlog(blog);
            return "redirect:/admin/panel";
        }
    }

    private boolean checkLogin() {
        if (session.getAttribute("username") == null) {
            return true;
        } else {
            return false;
        }
    }

    @PostMapping("/change-pass")
    public String changePass(ChangePassDto user, Model model, RedirectAttributes redirectAttrs) {
        if (userService.checkUser(user.getUsername().trim(), user.getPassword())) {
            userService.changePass(user.getUsername(), user.getNewPassword());
            redirectAttrs.addFlashAttribute("success", "Password changed");
            return "redirect:/admin/panel";
        } else {
            redirectAttrs.addFlashAttribute("error", "Wrong username or password");
            return "redirect:/admin/panel";
        }
    }

    @GetMapping("/logout")
    public String logout() {
        session.invalidate();
        return "redirect:/";
    }

    // order controller
    // 

}
