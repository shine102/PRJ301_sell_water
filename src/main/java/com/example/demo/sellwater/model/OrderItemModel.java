package com.example.demo.sellwater.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;


import lombok.Data;

@Entity 
@Data
@Table(name = "order_item")
public class OrderItemModel {
    public OrderItemModel() {
    }
    
    public OrderItemModel(int quantity, DrinkModel drink, OrderModel order) {
        this.quantity = quantity;
        this.order = order;
        this.drink = drink;
    }

    @Id 
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Long id;
    
    @Column(name = "quantity")
    private int quantity;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "order_id")
    private OrderModel order;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "drink_id", referencedColumnName = "id")
    private DrinkModel drink;
}
