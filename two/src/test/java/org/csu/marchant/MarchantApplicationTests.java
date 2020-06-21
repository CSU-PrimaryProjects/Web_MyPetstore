package org.csu.marchant;

import org.csu.marchant.domain.Category;
import org.csu.marchant.domain.Seller;
import org.csu.marchant.service.AccountService;
import org.csu.marchant.service.CategoryService;
import org.junit.jupiter.api.Test;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@MapperScan("org.csu.marchant.persistence")
@SpringBootTest
class MarchantApplicationTests {
    @Autowired
    private AccountService accountService;
    @Autowired
    private CategoryService categoryService;

    @Test
    void contextLoads() {
    }

    @Test
    void testSeller(){
        Seller seller = accountService.getSellerByUsernameAndPassword("846614051", "zhy123");
        System.out.println(seller.getSellerName());
    }

    @Test
    void testCategory(){
//        List<Category> categoryList = categoryService.getCategoryList();
        categoryService.deleteCategoryById("REPTILE");
    }
}
