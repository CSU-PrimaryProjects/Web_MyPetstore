package org.csu.marchant.service;

import org.csu.marchant.domain.Category;
import org.csu.marchant.domain.Item;
import org.csu.marchant.persistence.CategoryMapper;
import org.csu.marchant.persistence.ItemMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {
    @Autowired
    private CategoryMapper categoryMapper;
    @Autowired
    private ItemMapper itemMapper;

    public List<Category> getCategoryList(){
        return categoryMapper.getCategoryList();
    }

    public Category getCategory(String categoryId){
        return categoryMapper.getCategory(categoryId);
    }

    public void deleteCategoryById(String categoryId){
        categoryMapper.deleteCategoryById(categoryId);
    }

    public void updateCategory(Category category){
        categoryMapper.updateCategory(category);
    }

    public void insertCategory(Category category){
        categoryMapper.insertCategory(category);
    }

    public List<Item> getItemListByCategoryId(String category){
        return itemMapper.getItemListByCategory(category);
    }

    public void updateInventoryQuantity(int quantity, String itemId){
        itemMapper.updateInventoryQuantity(quantity, itemId);
    }

    public void deleteItemByItemId(String itemId){
        itemMapper.deleteItemByItemId(itemId);
    }

    public void deleteInventory(String itemId){
        itemMapper.deleteInventory(itemId);
    }

    public Item getItem(String itemId){
        return itemMapper.getItem(itemId);
    }
}
