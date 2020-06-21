package org.csu.marchant.controller;

import org.csu.marchant.domain.Account;
import org.csu.marchant.domain.Order;
import org.csu.marchant.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
@RequestMapping("/")
@SessionAttributes({"userList","orderList"})
public class UserController {
    @Autowired
    private AccountService accountService;

    @RequestMapping("/users")
    public String users(Model model){
        List<Account> userList = accountService.getUsers();
//        System.out.println(userList.size());
        model.addAttribute("userList", userList);
        return "users";
    }

    @RequestMapping("/orders")
    public String orders(Model model){
        List<Order> orderList = accountService.getOrderList();
//        System.out.println(orderList.get(0).getItem());
        model.addAttribute("orderList", orderList);
        return "bills";
    }

    @RequestMapping("/orders/deliver/{orderId}")
    public String deliverOrder(@PathVariable("orderId") String id){
        accountService.updateOrderId(id);
        return "redirect:/orders";
    }

    @RequestMapping("/orders/remove/{orderId}")
    public String removeOrder(@PathVariable("orderId")  String id){
        accountService.deleteByOrderId(id);
        return "redirect:/orders";
    }

    @RequestMapping("/users/{username}")
    public String resetpassword(@PathVariable("username") String username){
        accountService.updatePassword(username);
        return "redirect:/users";
    }
}
