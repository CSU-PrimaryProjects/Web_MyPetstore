package org.csu.marchant.service;

import org.csu.marchant.domain.Account;
import org.csu.marchant.domain.Order;
import org.csu.marchant.domain.Seller;
import org.csu.marchant.persistence.OrderMapper;
import org.csu.marchant.persistence.SellerMapper;
import org.csu.marchant.persistence.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccountService {
    @Autowired
    private SellerMapper sellerMapper;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private OrderMapper orderMapper;

    public Seller getSellerByUsernameAndPassword(String sellerId, String password){
        Seller seller = sellerMapper.getSellerByUsernameAndPassword(sellerId, password);
//        System.out.println(seller.getSellerName());
        return seller;
    }

    public Seller getSellerBySellerId(String sellerId){
        return sellerMapper.getSellerBySellerId(sellerId);
    }

    public void updateSeller(Seller seller){
        sellerMapper.updateSeller(seller);
    }

    public List<Account> getUsers(){
        return userMapper.getUsers();
    }

    public List<Order> getOrderList(){
        return orderMapper.getOrderList();
    }

    public void updatePassword(String username){
        userMapper.updatePassword(username);
    }

    public void updateOrderId(String orderId){
        orderMapper.updateDeliver(orderId);
    }

    public void deleteByOrderId(String orderId){
        orderMapper.deleteByOrderId(orderId);
    }
}
