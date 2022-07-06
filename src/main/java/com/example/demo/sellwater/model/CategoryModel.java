package com.example.demo.sellwater.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name = "category_tab")
public class CategoryModel {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(name="category_name")
    private String categoryName;
    @Column(name="image_link")
    private String imageLink;
    // @OneToMany(mappedBy = "category_tab")
    // private List<DrinkModel> drinks = new ArrayList<>();

}
