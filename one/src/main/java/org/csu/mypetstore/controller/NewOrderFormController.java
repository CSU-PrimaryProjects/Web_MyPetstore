package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/newOrderForm")
@SessionAttributes(value = {"order"})
public class NewOrderFormController {
    @Autowired
    OrdersService ordersService;

    @GetMapping
    public String newOrderForm(@SessionAttribute Account account, @SessionAttribute Cart cart, Model model, HttpServletResponse response) throws IOException {

        if(account ==null||cart==null)
        {
            System.out.println("login");
            response.sendRedirect("../login");
            return "login";
        }
        else
        {
            Order order=new Order();
            order.initOrder(account,cart);
            model.addAttribute("order",order);
            ordersService.insertOrder(order);
            System.out.println("neworderform");
            return "neworderform";
        }
    }
}
