package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.Category;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.persistence.CategoryDAO;
import org.csu.mypetstore.persistence.ItemDAO;
import org.csu.mypetstore.persistence.ProductDAO;
import org.csu.mypetstore.persistence.impl.CategoryDAOImpl;
import org.csu.mypetstore.persistence.impl.ItemDAOImpl;
import org.csu.mypetstore.persistence.impl.ProductDAOImpl;

import java.math.BigDecimal;
import java.util.List;

public class CatalogService {

    private CategoryDAO categoryDAO;
    private ProductDAO productDAO;
    private ItemDAO itemDAO;

    public CatalogService(){
        categoryDAO=new CategoryDAOImpl();
        productDAO=new ProductDAOImpl();
        itemDAO=new ItemDAOImpl();
    }

    public List<Category> getCategoryList() {
        return categoryDAO.getCategoryList();
    }

    public Category getCategory(String categoryId) {
        return categoryDAO.getCategory(categoryId);
    }

    public Product getProduct(String productId) {
        return productDAO.getProduct(productId);
    }

    public List<Product> getProductListByCategory(String categoryId) {
        return productDAO.getProductListByCategory(categoryId);
    }

    // TODO enable using more than one keyword
    public List<Product> searchProductList(String keyword) {
        return productDAO.searchProductList("%" + keyword.toLowerCase() + "%");
    }

    public List<Item> getItemListByProduct(String productId) {
        return itemDAO.getItemListByProduct(productId);
    }

    public Item getItem(String itemId) {
        return itemDAO.getItem(itemId);
    }

    public boolean isItemInStock(String itemId) {
        return itemDAO.getInventoryQuantity(itemId) > 0;
    }

    public void insertCarts(String userId, String itemId, String productId, int Quantity, BigDecimal listPrice){itemDAO.insertCarts(userId,itemId,productId,Quantity,listPrice);}

    public Cart getCarts(String userId) {
        return itemDAO.getCarts(userId);
    }

    public void insertViewItem(String viewItem,String viewItemName){itemDAO.insertViewItem(viewItem,viewItemName);}
}
