package com.example.demo.sellwater.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Entity 
@Data
@Table(name="drink_tab")
public class DrinkModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name="drink_name")
    private String drinkName;
    
    @Column(name="price")
    private int price;

    @Column(name="image_link")
    private String imageLink;
    
    @Column(columnDefinition = "float(1) default 0")
    private double rating = 0;
    
    @Column(columnDefinition = "integer default 0")
    private int numberRating = 0;

    @Column(columnDefinition = "nvarchar(max)")
    private String description;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "category_id")
    private CategoryModel category;

    @OneToMany(mappedBy = "id")
    private List<OrderItemModel> orderItem = new ArrayList<>();;
}
