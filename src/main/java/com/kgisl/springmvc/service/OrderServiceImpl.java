package com.kgisl.springmvc.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kgisl.springmvc.dao.OrderDAO;
import com.kgisl.springmvc.entity.Order;

@Service
public class OrderServiceImpl implements OrderService{
    @Autowired
    private OrderDAO orderDAO;
  
    @Override
    @Transactional
    public List<Order> getOrders() {
        return orderDAO.getOrders();

    }

    @Override
    @Transactional
    public void saveOrder(Order theOrder) {
        orderDAO.saveOrder(theOrder);
        
    }

    @Resource(name = "sessionFactory")
    protected SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {

        this.sessionFactory = sessionFactory;

    }

    protected Session getSession() {

        return sessionFactory.openSession();

    }



    
 

    }

 

   

