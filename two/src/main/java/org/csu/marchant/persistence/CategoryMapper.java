package org.csu.marchant.persistence;

import org.csu.marchant.domain.Category;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryMapper {
    //获取种类清单
    List<Category> getCategoryList();
    //获取某个种类
    Category getCategory(String categoryId);
    //通过种类id删除某个种类
    void deleteCategoryById(String categoryId);
    //通过ID更新种类
    void updateCategory(Category category);
    //插入新品种
    void insertCategory(Category category);
    String getProductIdByCategoryId(String categoryId);
}
