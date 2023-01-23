package com.kgisl.springmvc.service;

import java.util.List;

import com.kgisl.springmvc.entity.Customer;


public interface CustomerService {

    
    public List<Customer> getCustomers();
    
    public void saveCustomer(Customer theCustomer);

    public Customer getCustomer(int theId);

    public void deleteCustomer(int theId);
    
    public boolean findUser(String username, String password);


  



 

}
