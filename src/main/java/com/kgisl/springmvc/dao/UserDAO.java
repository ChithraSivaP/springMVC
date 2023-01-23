package com.kgisl.springmvc.dao;

import java.util.List;

import com.kgisl.springmvc.entity.User;

public interface UserDAO {
    public List < User > getUsers();

    public void saveUser(User theUser);
}
