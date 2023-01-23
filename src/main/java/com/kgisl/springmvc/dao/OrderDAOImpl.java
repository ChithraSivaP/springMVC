package com.kgisl.springmvc.dao;

import java.util.List;

import javax.persistence.Query;
// import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kgisl.springmvc.entity.Order;
@Repository
public class OrderDAOImpl implements OrderDAO {
    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public List < Order > getOrders() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery < Order > cq = cb.createQuery(Order.class);
        Root < Order > root = cq.from(Order.class);
        cq.select(root);
        Query query1 = session.createQuery(cq);
        return query1.getResultList();
    }
    @Override
    public void saveOrder(Order theOrder) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(theOrder);  
    }
   
   
   
    
}


