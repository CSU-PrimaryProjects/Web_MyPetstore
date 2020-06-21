package org.csu.marchant.persistence;

import org.csu.marchant.domain.Item;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ItemMapper {
    //通过categoryId查询符合要求的物品
    List<Item> getItemListByCategory(String categoryId);
    //添加item数量
    void updateInventoryQuantity(int quantity ,String itemId);
    //移除item
    void deleteItemByItemId(String itemId);
    void deleteInventory(String itemId);
    Item getItem(String itemId);
}
