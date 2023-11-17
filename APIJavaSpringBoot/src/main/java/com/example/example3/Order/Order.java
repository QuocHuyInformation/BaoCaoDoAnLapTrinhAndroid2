package com.example.example3.Order;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "orders")
public class Order {
    


     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private LocalDateTime orderDate; // Sử dụng LocalDateTime thay cho Date
    private Long idProduct;
    private String paymentMethod;
    private Long idUser;
    @Column(columnDefinition = "TEXT")
    private String shippingInfo;
    private String status;
    private Integer quantity;
    private double price;

   
}
