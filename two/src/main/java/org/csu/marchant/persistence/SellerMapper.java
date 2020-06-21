package org.csu.marchant.persistence;

import org.csu.marchant.domain.Seller;
import org.springframework.stereotype.Repository;

@Repository
public interface SellerMapper {
    //通过用户名和密码查看信息
    Seller getSellerByUsernameAndPassword(String sellerId, String password);
    //通过用户名查看信息
    Seller getSellerBySellerId(String sellerId);
    //修改信息
    void updateSeller(Seller seller);
}
