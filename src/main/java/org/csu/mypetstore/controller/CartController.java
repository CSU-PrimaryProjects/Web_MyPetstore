package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.ItemService;
import org.omg.Messaging.SYNC_WITH_TRANSPORT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

@Controller
@RequestMapping("/cart")
@SessionAttributes(value = {"cart"})
public class CartController {
    @Autowired
    private ItemService itemService;
    @Autowired
    private AccountService accountService;

    @GetMapping("/addItem")
    public String addToCard(String itemId, Model model,Account account, HttpServletResponse response) throws IOException {
        System.out.println(account.getUsername());
        System.out.println(account.getUsername());
        System.out.println(account.getUsername());
        if (account.getUsername()!=null){
            Item item=itemService.getItem(itemId);
            itemService.insertCarts(account.getUsername(),itemId,item.getProductId(),item.getQuantity(),item.getListPrice());
            itemService.updateCards(account.getUsername());
            Cart cart = itemService.getCart(account.getUsername());
            model.addAttribute("cart",cart);
            return "cart";
        }else{
            response.sendRedirect("../login");
            return "login";
        }
    }

    @GetMapping("/view")
    public String viewCarts(Account account,Model model){
        List<Cart> carts = itemService.getCarts(account.getUsername());
        model.addAttribute("carts",carts);
        return "cart";
    }


}
