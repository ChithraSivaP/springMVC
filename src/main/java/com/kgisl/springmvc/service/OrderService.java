package com.kgisl.springmvc.service;

import java.util.List;

import com.kgisl.springmvc.entity.Order;

public interface OrderService {

    public List<Order> getOrders();

    public void saveOrder(Order theOrder);






    
}
