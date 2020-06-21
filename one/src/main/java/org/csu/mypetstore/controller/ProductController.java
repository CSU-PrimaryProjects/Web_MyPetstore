package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.ItemService;
import org.csu.mypetstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
@RequestMapping("/viewproduct")
@SessionAttributes(value = {"items"})
public class ProductController {
    @Autowired
    ProductService productService;
    @Autowired
    ItemService itemService;

    @GetMapping
    public String viewProduct(String productId,Model model){
        List<Item> items = itemService.getItemListByProduct(productId);
        model.addAttribute("items",items);
        return "product";
    }
}
