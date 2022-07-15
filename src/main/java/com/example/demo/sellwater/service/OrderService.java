package com.example.demo.sellwater.service;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.sellwater.dto.OrderCreateDto;
import com.example.demo.sellwater.dto.OrderItemDto;
import com.example.demo.sellwater.model.DrinkModel;
import com.example.demo.sellwater.model.OrderItemModel;
import com.example.demo.sellwater.model.OrderModel;
import com.example.demo.sellwater.repository.DrinkRepo;
import com.example.demo.sellwater.repository.OrderItemRepo;
import com.example.demo.sellwater.repository.OrderRepo;

@Service
public class OrderService {

    @Autowired
    OrderRepo orderRepo;
    @Autowired
    DrinkRepo drinkRepo;
    @Autowired
    OrderItemRepo orderItemRepo;
    
    public OrderModel searchOrder(String orderId) {
        OrderModel order = orderRepo.findById(orderId).orElse(null);     
        return order;
    }

    public String createOrder(@Valid OrderCreateDto order) {
        OrderModel orderModel = new OrderModel();
        orderModel.setAddress(order.getAddress());
        orderModel.setClientName(order.getClientName());
        orderModel.setPhone(order.getPhoneNumber());
        List<OrderItemModel> orderItemList = new ArrayList<OrderItemModel>(); 
        
        order.getItemList().forEach(item -> {
            OrderItemModel orderItem = new OrderItemModel(item.getQuantity(), drinkRepo.findById(item.getId()).orElse(null), orderModel);
            orderItemList.add(orderItem);
        });
        // save order_table
        orderModel.setOrderItem(orderItemList);
        orderRepo.save(orderModel);

        // save order_item_table
        order.getItemList().forEach(item -> {
            OrderItemModel orderItem = new OrderItemModel(item.getQuantity(), drinkRepo.findById(item.getId()).orElse(null), orderRepo.findById(orderModel.getId()).orElse(null));
            orderItemRepo.save(orderItem);
        });

        return orderModel.getId();
    }

    public List<OrderModel> fetchOrderList() {
        List<OrderModel> list = orderRepo.findAll();
        return list;
    }

    public boolean cancelOrder(String orderId) {
        OrderModel order = orderRepo.findById(orderId).orElse(null);
        if (order.getStatus().equals("pending")) {
            order.setStatus("cancel");
            orderRepo.save(order);
            return true;
        } else {
            return false;
        }
    }

    public boolean approvedOrder(String orderId) {
        OrderModel orderModel = orderRepo.findById(orderId).orElse(null);
        if(orderModel == null) {
            return false;
        } else {
            String orderStatus = orderModel.getStatus();
            if(orderStatus.equals("pending")) {
                orderModel.setStatus("onway");
                orderRepo.save(orderModel);
                return true;
            } else {
                return false;
            }
        }
    }

    public boolean deliveredOrder(String orderId) {
        OrderModel order = orderRepo.findById(orderId).orElse(null);
        if(order == null) {
            return false;
        } else {
        if(order.getStatus().equals("onway")) {
            order.setStatus("delivered");
            orderRepo.save(order);
            return true;
        } else {
            return false;
        }
    }
    }

    public OrderModel fetchOrderById(String orderId) {
        return orderRepo.findById(orderId).orElse(null);
    }

    public OrderCreateDto fetchOrder(String orderId) {
        
        OrderModel order = orderRepo.findById(orderId).orElse(null);
        if(order == null) {
            return null;
        }
        OrderCreateDto orderCreateDto = new OrderCreateDto();
        orderCreateDto.setAddress(order.getAddress());
        orderCreateDto.setClientName(order.getClientName());
        orderCreateDto.setPhoneNumber(order.getPhone());
        
        ArrayList<OrderItemDto> orderItemList = new ArrayList<OrderItemDto>();
        order.setOrderItem(orderItemRepo.findByOrder_Id(orderId));
        
        order.getOrderItem().forEach(item -> {
            OrderItemDto orderItemDto = new OrderItemDto();
            orderItemDto.setQuantity(item.getQuantity());
            orderItemDto.setPrice(item.getDrink().getPrice());
            orderItemDto.setName(item.getDrink().getDrinkName());
            orderItemList.add(orderItemDto);
        });
        
        orderCreateDto.setItemList(orderItemList);
        return orderCreateDto;
    }

    public boolean rateOrder(String orderId, Integer rate, String comment) {
        OrderModel order = orderRepo.findById(orderId).orElse(null);
        ArrayList<DrinkModel> drinkList = new ArrayList<DrinkModel>(); // list of drink that will be rated
        
        if(order == null) {
            return false;
        }     
        order.setOrderItem(orderItemRepo.findByOrder_Id(orderId));

        order.getOrderItem().forEach(item -> {
            drinkList.add(drinkRepo.findById(item.getId()).orElse(null));
        });

        for(int i = 0; i < drinkList.size(); i++) {
            int oldNumberRating = drinkList.get(i).getNumberRating();
            int newNumberRating = oldNumberRating + 1;
            double oldRating = drinkList.get(i).getRating();
            double newRating = (oldRating * oldNumberRating + rate) / newNumberRating;
            drinkList.get(i).setNumberRating(newNumberRating);
            drinkList.get(i).setRating(newRating);
            drinkRepo.save(drinkList.get(i));
        }
        System.out.println(order.getStatus().equals("delivered"));
        if(order.getStatus().equals("delivered")) {
            order.setComment(comment);
            orderRepo.save(order);
            return true;
        } else {
            return false;
        }
    }
}
