package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.ProductService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
@RequestMapping("/search")
@SessionAttributes(value = {"products"})
public class SearchController {
    @Autowired
    ProductService productService;
    @PostMapping
    public String searchProduct(String keyword, Model model){
        List<Product> products = productService.searchProductList(keyword);
        model.addAttribute("products",products);
        return "search";
    }
}
