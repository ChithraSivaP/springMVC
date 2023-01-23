package com.kgisl.springmvc.dao;

import java.util.List;

import com.kgisl.springmvc.entity.Customer;


public interface CustomerDAO {

    public List < Customer > getCustomers();

    public void saveCustomer(Customer theCustomer);

    public Customer getCustomer(int theId);

    public void deleteCustomer(int theId);
  
}
