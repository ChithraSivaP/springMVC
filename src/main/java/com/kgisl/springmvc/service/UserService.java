package com.kgisl.springmvc.service;

import java.util.List;

import com.kgisl.springmvc.entity.User;

public interface UserService {
    
    public List<User> getUsers();
    public void saveUser(User theUser);
    public boolean findUser(String email, String password);

}
