package com.example.demo.sellwater.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.sellwater.dto.AddDrinkDto;
import com.example.demo.sellwater.dto.ChangePassDto;
import com.example.demo.sellwater.dto.OrderCreateDto;
import com.example.demo.sellwater.dto.UpdateDrinkDto;
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
    public String addDrink(AddDrinkDto drink) {
        if(checkLogin()){
            return "redirect:/admin/login";
        } else {
            System.out.println(1);
            DrinkModel drinkModel = new DrinkModel();
            System.out.println(2);
            drinkModel.setDrinkName(drink.getDrinkName());
            drinkModel.setPrice(drink.getPrice());
            drinkModel.setImageLink(drink.getImageLink());
            drinkModel.setDescription(drink.getDescription());
            drinkModel.setCategory(categoryService.fetchCategoryById(drink.getCategoryId()));
            System.out.println(3);
            drinkService.saveDrink(drinkModel);
            System.out.println(4);
            return "redirect:/admin/panel";
        }
    }

    @PutMapping("/panel/drink/{id}")
    public @ResponseBody String updateDrink(@RequestBody UpdateDrinkDto drink, @PathVariable Long id) {
        if(checkLogin()){
            return "redirect:/admin/login";
        } else {
            DrinkModel drinkModel = drinkService.fetchDrinkById(id);
            drinkModel.setDrinkName(drink.getDrinkName());
            drinkModel.setPrice(drink.getPrice());
            drinkModel.setImageLink(drink.getImageLink());
            drinkModel.setDescription(drink.getDescription());
            drinkService.saveDrink(drinkModel);
            return "redirect:/admin/panel";
        }
    }

    @DeleteMapping("/panel/drink/{id}")
    public @ResponseBody String deleteDrink(@PathVariable Long id) {
        if(checkLogin()){
            return "redirect:/admin/login";
        } else {
            drinkService.deleteDrink(id);
            return "redirect:/admin/panel";
        }
    }

    @PostMapping("/panel/blog")
    public String addBlog(BlogModel blog) {
        if(checkLogin()){
            return "redirect:/admin/login";
        } else {
            blogService.saveBlog(blog);
            return "redirect:/admin/panel";
        }
    }

    @PutMapping("/panel/blog/{id}")
    public @ResponseBody String modifyBlog(@PathVariable Long id, @RequestBody BlogModel blog) {
        if(checkLogin()){
            return "redirect:/admin/login";
        } else {
            BlogModel blogModel = blogService.fetchBlogById(id);
            blogModel.setBlogTitle(blog.getBlogTitle());
            blogModel.setContent(blog.getContent());
            blogService.saveBlog(blogModel);
            return "redirect:/admin/panel";
        }
    }

    @DeleteMapping("/panel/blog/{id}")
    public @ResponseBody String deleteBlog(@PathVariable Long id) {
        if(checkLogin()){
            return "redirect:/admin/login";
        } else {
            blogService.deleteBlog(id);
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
        System.out.println(1);
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
    
    @GetMapping("/panel/order")
    public String order(Model model, @RequestParam String orderId) {
        if(checkLogin()){
            return "redirect:/admin/login";
        } else {
            if (orderId == null){
                return "redirect:/admin/panel";
            } else {
                
                OrderCreateDto order = orderService.fetchOrder(orderId);
                OrderModel orderModel = orderService.fetchOrderById(orderId);
                model.addAttribute("orderId", orderId);
                model.addAttribute("order", order);
                model.addAttribute("total", order.getTotalPrice());
                model.addAttribute("status", orderModel.getStatus());
                return "admin_order";
            }
        }
    }

    @GetMapping("/order/onway")
    public @ResponseBody String approved(@RequestParam String orderId) {
        System.out.println(orderId);
        if(!checkLogin()){
            if(orderService.approvedOrder(orderId)){
                return "success";
            } else {
                return "error";
            }
        } else {
            return "not valid admin!";
        }
    }

    @GetMapping("/order/delivered")
    public @ResponseBody String delivered(@RequestParam String orderId) {
        if(!checkLogin()){
            if(orderService.deliveredOrder(orderId)){
                return "success";
            } else {
                return "error";
            }
        } else {
            return "not valid admin!";
        }
    }

    @GetMapping("/order/cancel")
    @ResponseBody
    public String cancel(@RequestParam String orderId) {
        System.out.println(1);
        if(!checkLogin()){
            if(orderService.cancelOrder(orderId)){
                return "success";
            } else {
                return "error";
            }
        } else {
            return "not valid admin!";
        }
    }


}
