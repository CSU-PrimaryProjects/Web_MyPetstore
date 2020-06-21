package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Category;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CategoryDAO {
    List<Category> getCategoryList();
    Category getCategory(String categoryID);
}
