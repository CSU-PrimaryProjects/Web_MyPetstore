package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Item;

import java.util.List;

public interface ItemService {
    public List<Item> getItemListByProduct(String productId);
    public Item getItem(String itemId) ;

    public boolean isItemInStock(String itemId);
}
