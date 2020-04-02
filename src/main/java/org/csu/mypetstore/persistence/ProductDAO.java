package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Product;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductDAO {
    List<Product>getProductListByCategory(String productID);
    Product getProduct(String productID);
    List<Product>searchProductList(String keyward);
}
