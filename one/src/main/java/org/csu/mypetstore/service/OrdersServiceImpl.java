package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.persistence.OrderDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class OrdersServiceImpl implements OrdersService {
    @Autowired
    OrderDAO orderDAO;
    public void insertOrder(Order order) {
        orderDAO.insertOrder(order);
    }

    public List<Order> getOrdersByUsername(String value) {
        return orderDAO.getOrdersByUsername(value);
    }
}
