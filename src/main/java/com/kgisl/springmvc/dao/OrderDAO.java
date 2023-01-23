package com.kgisl.springmvc.dao;

import java.util.List;

import com.kgisl.springmvc.entity.Order;

public interface OrderDAO {

    public List<Order> getOrders();

    public void saveOrder(Order theOrder);




    
}
