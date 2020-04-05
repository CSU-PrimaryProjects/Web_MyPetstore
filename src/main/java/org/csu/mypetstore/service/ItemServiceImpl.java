package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.persistence.ItemDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
public class ItemServiceImpl implements ItemService{
    @Autowired
    ItemDAO itemDAO;
    public List<Item> getItemListByProduct(String productId) {
        return itemDAO.getItemListByProduct(productId);
    }

    public Item getItem(String itemId) {
        return itemDAO.getItem(itemId);
    }

    public boolean isItemInStock(String itemId) {
        return false;
    }

    public void insertCarts(String userId, String itemId, String productId, int Quantity, BigDecimal listPrice) {
        itemDAO.insertCarts(userId,itemId,productId,Quantity,listPrice);
    }

    public List<Cart> getCarts(String userId) {
        List<Cart> carts = itemDAO.getCarts(userId);
        return carts;
    }

    public Cart getCart(String userId) {
        return itemDAO.getCart(userId);
    }

    public void insertViewItem(String viewItem, String viewItemName) {
        itemDAO.insertViewItem(viewItem,viewItemName);
    }

    public void updateCards(String userId) {
        itemDAO.updateCards(userId);
    }

}
