package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Category;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.persistence.CategoryDAO;
import org.csu.mypetstore.service.CategoryService;
import org.csu.mypetstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
@RequestMapping("/viewcategory")
@SessionAttributes(value = {"category","products"})
public class CategoryController {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private ProductService productService;

    @GetMapping
    public String viewCategory(String categoryId, Model model){
        Category category = categoryService.getCategory(categoryId);
        List<Product> productList = productService.getProductListByCategory(categoryId);
        model.addAttribute("category",category);
        model.addAttribute("products",productList);
        return "category";
    }

}
