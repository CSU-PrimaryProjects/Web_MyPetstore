package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Category;

import java.util.List;

public interface CategoryService {
    public List<Category> getCategoryList();

    public Category getCategory(String categoryId);

}
