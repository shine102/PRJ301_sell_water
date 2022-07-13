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
import javax.validation.constraints.NotBlank;

import lombok.Data;

@Entity 
@Data
@Table(name = "category_tab")
public class CategoryModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotBlank(message = "Please add category name")
    @Column(name="category_name")
    private String categoryName;

    @NotBlank(message = "Please add image link")
    @Column(name="image_link")
    private String imageLink;

    @OneToMany(mappedBy = "id")
    private List<DrinkModel> drinks = new ArrayList<>();

}
