package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Product;

import java.util.List;

public interface ProductService {
    public Product getProduct(String productId);

    public List<Product> getProductListByCategory(String categoryId);

    public List<Product> searchProductList(String keyword);
}
