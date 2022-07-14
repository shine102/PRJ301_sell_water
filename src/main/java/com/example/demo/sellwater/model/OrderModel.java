package com.example.demo.sellwater.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


import lombok.Data;

@Entity
@Data
@Table(name = "order_tab")

public class OrderModel {
    @Id
    @Column(name = "id")
    private String id;

    @Column
    private String clientName;

    @Column(name = "phone")
    private String phone;

    @Column(name = "address")
    private String address;

    @Column(name = "comment", columnDefinition = "nvarchar(max)")
    private String comment;

    @Column
    private String status = "pending";

    @Column
    private Date createdAt = new Date();

    @OneToMany(mappedBy = "id")
    private List<OrderItemModel> orderItem = new ArrayList<>();

    public OrderModel(){
        UUID uuid = UUID.randomUUID();
        this.id = uuid.toString();
    }
}
