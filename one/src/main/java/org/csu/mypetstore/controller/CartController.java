package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.CartItem;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Iterator;

@Controller
@RequestMapping("/cart")
@SessionAttributes(value = {"cart","order"})
public class CartController {
    @Autowired
    private ItemService itemService;
    @Autowired
    private AccountService accountService;
    @Autowired
    private Cart cart;

    @GetMapping("")
    public String cart(){
        return "cart";
    }

    @GetMapping("viewCart")
    public String viewCart(Model model,HttpServletResponse response) throws IOException {
        model.addAttribute("cart",cart);
        response.sendRedirect("../cart");
        return "cart";
    }

    @GetMapping("addItem")
    public String addItemToCart(String itemId, Model model,HttpServletResponse response) throws IOException {
        if(cart.containsItemId(itemId)){
            cart.incrementQuantityByItemId(itemId);
        }else{
            boolean isInStock = itemService.isItemInStock(itemId);
            Item item = itemService.getItem(itemId);
            cart.addItem(item,isInStock);
        }
        model.addAttribute("cart",cart);
        response.sendRedirect("../cart");
        return "cart";
    }

    @GetMapping("removeItemFromCart")
    public String removeItemFromCart(String workingItemId, Model model,HttpServletResponse response) throws IOException {
        Item item = cart.removeItemById(workingItemId);
        model.addAttribute("cart",cart);
        if(item == null){
            model.addAttribute("msg", "Attempted to remove null CartItem from Cart.");
            return "common/error";
        }else{
            response.sendRedirect("../cart");
            return "cart";
        }
    }

    @PostMapping("updateCartQuantities")
    public String updateCartQuantities(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
        Iterator<CartItem> cartItems = cart.getAllCartItems();
        while (cartItems.hasNext()){
            CartItem cartItem = cartItems.next();
            String itemId = cartItem.getItem().getItemId();
            try{
                int quantity = Integer.parseInt(request.getParameter(itemId));
                cart.setQuantityByItemId(itemId,quantity);
                if(quantity < 1){
                    cartItems.remove();
                }
            }catch (Exception e){

            }
        }
        model.addAttribute("cart",cart);
        response.sendRedirect("../cart");
        return "cart";
    }

}
