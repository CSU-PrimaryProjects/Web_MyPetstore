package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.Item;

import java.math.BigDecimal;
import java.util.List;

public interface ItemService {
    public List<Item> getItemListByProduct(String productId);
    public Item getItem(String itemId) ;
    public boolean isItemInStock(String itemId);
    public void insertCarts(String userId, String itemId, String productId, int Quantity, BigDecimal listPrice);
    public List<Cart> getCarts(String userId);
    Cart getCart(String userId);
    public void insertViewItem(String viewItem,String viewItemName);
    public void updateCards(String userId);
}
