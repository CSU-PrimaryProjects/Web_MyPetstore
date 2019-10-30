package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Product;

import java.util.List;

public interface ProductDAO {
    List<Product>getProductListByCategory(String productID);
    Product getProduct(String productID);
    List<Product>searchProductList(String keyward);
}
