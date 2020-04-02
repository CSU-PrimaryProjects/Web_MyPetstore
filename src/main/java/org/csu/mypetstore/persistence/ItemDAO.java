package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.Item;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

@Repository
public interface ItemDAO {
    void updateInventoryQuantity(Map<String, Object> param);

    int getInventoryQuantity(String itemId);

    List<Item> getItemListByProduct(String productId);

    Item getItem(String itemId);

    void insertCarts(String userId, String itemId, String productId, int quantity, BigDecimal listPrice);

    void insertViewItem(String viewItem, String viewItemName);

    Cart getCarts(String userId);
}
