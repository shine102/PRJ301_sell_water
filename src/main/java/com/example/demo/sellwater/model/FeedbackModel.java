package com.example.demo.sellwater.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.GenerationType;

import lombok.Data;

@Entity
@Data
@Table(name = "feedback_tab")
public class FeedbackModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "star")
    private int star;

    @Column(name = "comment")
    private int comment;

    @OneToOne
    @JoinColumn(name = "order_id", referencedColumnName = "id")
    private OrderModel order;
}
