package com.example.demo.sellwater.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Data
@Table(name = "blog_tab")
public class BlogModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    @Column(name = "blog_title")
    private String blogTitle;
    @Lob
    @NotBlank
    @Column(name = "content")
    private String content;
    @NotBlank
    @Column(name = "image_link")
    private String imageLink;
}
