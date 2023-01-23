package com.kgisl.springmvc.service;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgisl.springmvc.dao.UserDAO;
import com.kgisl.springmvc.entity.User;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserDAO customerDAO;
  

    @Override
    @Transactional
    public List<User> getUsers() {
        return customerDAO.getUsers();
    }

    @Override
    @Transactional
    public void saveUser(User theUser) {
        customerDAO.saveUser(theUser);
    }


    @Resource(name="sessionFactory")
        protected SessionFactory sessionFactory;
    
        public void setSessionFactory(SessionFactory sessionFactory) {
    
               this.sessionFactory = sessionFactory;
        }
        protected Session getSession(){
               return sessionFactory.openSession();
        }
        public boolean findUser(String email, String password){
             System.out.println("In Check login");
             Session session = sessionFactory.openSession();
             boolean userFound = false;

    
    
             //Query using Hibernate Query Language
    
             String SQL_QUERY ="  from user where pass_word = ?1 and email_id =?2";
    
             Query query = session.createQuery(SQL_QUERY);
    
             query.setParameter(2,email);
    
             query.setParameter(1,password);
    
             List list = query.list();

             System.out.println(list);
    
    
             if ((list != null) && (list.size() > 0)) {
    
                 userFound= true;
    
             }
    
    
    
             session.close();
    
             return userFound;              
    
        }


}
