package com.kgisl.springmvc.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kgisl.springmvc.dao.CustomerDAO;
import com.kgisl.springmvc.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {
    // @Autowired
    // private CustomerRepository customerRepository = new CustomerRepository();
    @Autowired
    private CustomerDAO customerDAO;

    @Override
    @Transactional
    public List<Customer> getCustomers() {
        return customerDAO.getCustomers();
    }

    @Override
    @Transactional
    public void saveCustomer(Customer theCustomer) {
        customerDAO.saveCustomer(theCustomer);
    }

    @Override
    @Transactional
    public Customer getCustomer(int theId) {
        return customerDAO.getCustomer(theId);
    }

    @Override
    @Transactional
    public void deleteCustomer(int theId) {
        customerDAO.deleteCustomer(theId);
    }

    @Resource(name = "sessionFactory")
    protected SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {

        this.sessionFactory = sessionFactory;

    }

    protected Session getSession() {

        return sessionFactory.openSession();

    }

    public boolean findUser(String username, String password) {

        System.out.println("In Check login");

        Session session = sessionFactory.openSession();

        boolean userFound = false;

        // Query using Hibernate Query Language

        String SQL_QUERY = "  from customer where first_name = ?1 and last_name =?2";

        Query query = session.createQuery(SQL_QUERY);

        query.setParameter(1, username);

        query.setParameter(2, password);

        List list = query.list();

        System.out.println(list);

        if ((list != null) && (list.size() > 0)) {

            userFound = true;

        }

        session.close();

        return userFound;

    }

   

    

}
