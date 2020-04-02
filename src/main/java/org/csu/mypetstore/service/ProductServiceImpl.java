package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.persistence.ProductDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{
    @Autowired
    ProductDAO productDAO;

    public Product getProduct(String productId) {
        return productDAO.getProduct(productId);
    }

    public List<Product> getProductListByCategory(String categoryId) {
        return productDAO.getProductListByCategory(categoryId);
    }

    public List<Product> searchProductList(String keyword) {
        return productDAO.searchProductList(keyword);
    }
}
