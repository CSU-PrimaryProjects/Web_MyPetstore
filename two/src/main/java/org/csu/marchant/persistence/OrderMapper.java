package org.csu.marchant.persistence;

import org.csu.marchant.domain.Order;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderMapper {
    //获取订单列表
    List<Order> getOrderList();
    //删除订单
    void deleteByOrderId(String orderId);
    //修改信息
    void updateDeliver(String orderId);
}
