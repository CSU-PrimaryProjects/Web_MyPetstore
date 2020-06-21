package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Order;

import java.util.List;

public interface OrdersService {
    public void insertOrder(Order order);
    public List<Order> getOrdersByUsername(String value);
}
