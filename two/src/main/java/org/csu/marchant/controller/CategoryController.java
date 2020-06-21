package org.csu.marchant.controller;

import org.csu.marchant.domain.Category;
import org.csu.marchant.domain.Item;
import org.csu.marchant.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/")
@SessionAttributes({"itemList","numberOfCategories","productList","categoryId"})
public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/index")
    public String index(Model model){
        List<Category> categoryList = categoryService.getCategoryList();
//        System.out.println(categoryList.size());
        model.addAttribute("categoryList", categoryList);
        model.addAttribute("numberOfCategories",categoryList.size());
//        System.out.println(categoryList.size());
        return "index";
    }

    @RequestMapping("/index/{categoryId}")
    public String deleteCategory(@PathVariable("categoryId") String id){
        categoryService.deleteCategoryById(id);
        return "redirect:/index";
    }

    @GetMapping("/category/itemList")
    public String category(String categoryId,Model model, HttpServletRequest request){
//        System.out.println(request.getParameter("categoryId"));
//        categoryService.getCategory(categoryId);
        if (request.getParameter("categoryId")!= null){
            List<Item> itemList = categoryService.getItemListByCategoryId(request.getParameter("categoryId"));
            model.addAttribute("itemList",itemList);
            model.addAttribute("categoryId", categoryId);
//            System.out.println(itemList);
        }
        return "details";
    }

    @RequestMapping("/itemList/add/{itemId}")
    public String add(@PathVariable("itemId") String id, HttpServletRequest request){
//        System.out.println(model.getAttribute("categoryId"));
        Item item = categoryService.getItem(id);
        item.setQuantity(item.getQuantity()+Integer.valueOf(request.getParameter("addnumber")));
//        System.out.println(item.getQuantity());
        categoryService.updateInventoryQuantity(item.getQuantity(), item.getItemId());

//        categoryService.updateCategory(item.getQuantity());
        return "redirect:/category/itemList?categoryId="+request.getSession().getAttribute("categoryId");
    }

    @RequestMapping("/itemList/remove/{itemId}")
    public String removeItem(@PathVariable("itemId") String id){
        categoryService.deleteItemByItemId(id);
        return "redirect:/category/itemList";
    }
}
