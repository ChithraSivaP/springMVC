package com.kgisl.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.kgisl.springmvc.entity.Customer;
import com.kgisl.springmvc.entity.Order;
import com.kgisl.springmvc.entity.User;
import com.kgisl.springmvc.service.CustomerService;
import com.kgisl.springmvc.service.OrderService;
import com.kgisl.springmvc.service.UserService;

@Controller
@RequestMapping("/")
public class CustomerController {
    // .................................................customerservices...................................................
    @Autowired
    private CustomerService customerService;
    // ....................................................userservices..........................................................
    @Autowired
    private UserService userService;

    //....................................................orderservice............................................
   @Autowired
   private OrderService orderService;





    // ...............................................indexpage loading................................................
    @GetMapping("/")
    public String viewpage(Model theModel) {

        return "firstpage";
    }

  





    // ................................................login customer.............................................................
    @GetMapping("/login")

    public ModelAndView validate(@RequestParam("username") String username, @RequestParam("password") String password) {
        String msg = "";
        System.out.println(msg);

        System.out.println(username);

        System.out.println(password);

        boolean isValid = customerService.findUser(username, password);

        if (isValid == true) {

            msg = "Welcome " + username + "!";

         
   

            return new ModelAndView("userwelcome");


        } else {

            msg = "Invalid credentials";

            return new ModelAndView("login");

        }    

    }

    @GetMapping("/list")
    public String listCustomers(Model theModel) {
        List<Customer> theCustomers = customerService.getCustomers();
        theModel.addAttribute("customers", theCustomers);
        return "list-customers";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model theModel) {
        Customer theCustomer = new Customer();
        theModel.addAttribute("customer", theCustomer);
        return "customer-form";
    }

    @PostMapping("/saveCustomer")
    public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {
        customerService.saveCustomer(theCustomer);
        return "redirect:/list";
    }

    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("customerId") int theId,
            Model theModel) {
        Customer theCustomer = customerService.getCustomer(theId);
        theModel.addAttribute("customer", theCustomer);
        return "customer-form";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("customerId") int theId) {
        customerService.deleteCustomer(theId);
        return "redirect:/list";
    }

    // .........................................................login admin...........................................................

    @GetMapping("/login1")

    public ModelAndView validate1(@RequestParam("email") String email, @RequestParam("password") String password) {
        String msg = "";
        System.out.println(msg);

        System.out.println(email);

        System.out.println(password);

        boolean isValid = userService.findUser(email, password);

        if (isValid == true) {

            msg = "Welcome " + email + "!";

            return new ModelAndView("adminentryform");

        } else {

            msg = "Invalid credentials";

            return new ModelAndView("firstpage");

        }

    }

    @GetMapping("/list1")
    public String listUsers(Model theModel) {
        List<User> theUsers = userService.getUsers();
        theModel.addAttribute("users", theUsers);
        return "list-users";
    }

    @GetMapping("/showForm1")
    public String showFormForAdd1(Model theModel) {
        User theUser = new User();
        theModel.addAttribute("user", theUser);
        return "user-form";
    }

    @PostMapping("/saveCustomer1")
    public String saveUser(@ModelAttribute("user") User theUser) {
        userService.saveUser(theUser);
        return "redirect:/list1";
    }

// ........................................order tatble..............................................
  

@GetMapping("/list2")
public String listOrders(Model theModel) {
    List<Order> theOrders = orderService.getOrders();
    theModel.addAttribute("orders", theOrders);
    return "list-order";
}

@GetMapping("/showForm2")
public String showFormForAdd2(Model theModel) {
    Order theOrder = new Order();
    theModel.addAttribute("order", theOrder);
    return "order-form";
}

@PostMapping("/saveOrder")
public String saveOrder(@ModelAttribute("order") Order theOrder) {
    orderService.saveOrder(theOrder);
    return "orderconfirmpage";
}

// ....................................................admin cards.............................................

@GetMapping("/admincard")
public String admincard(Model theModel){

    return "asdmincard";
}








}