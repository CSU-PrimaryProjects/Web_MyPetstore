package org.csu.mypetstore.persistence.impl;

import org.csu.mypetstore.domain.LineItem;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.persistence.DBUtil;
import org.csu.mypetstore.persistence.LineItemDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class LineItemDAOImpl implements LineItemDAO {
    private static final String getLineItemsByOrderIdString = "SELECT ORDERID, LINENUM AS lineNumber, ITEMID, QUANTITY," +
            "UNITPRICE FROM LINEITEM HERE ORDERID = ?";
    private static final String insertLineItemString = "INSERT INTO LINEITEM (ORDERID, LINENUM, ITEMID, QUANTITY, UNITPRICE)" +
            "VALUES (?, ?, ?, ?, ?)";

    @Override
    public List<LineItem> getLineItemsByOrderId(int orderId) {
        List<LineItem> lineItems = new ArrayList<LineItem>();
        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(getLineItemsByOrderIdString);
            pStatement.setInt(1,orderId);
            ResultSet resultSet = pStatement.executeQuery();
            while(resultSet.next()){
                LineItem item = new LineItem();
                item.setOrderId(resultSet.getInt(1));
                item.setLineNumber(resultSet.getInt(2));
                item.setItemId(resultSet.getString(3));
                item.setQuantity(resultSet.getInt(4));
                item.setUnitPrice(resultSet.getBigDecimal(5));
                lineItems.add(item);
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(pStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }

        return lineItems;
    }

    @Override
    public void insertLineItem(LineItem lineItem) {
        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(insertLineItemString);
            pStatement.setInt(1,lineItem.getOrderId());
            pStatement.setInt(2,lineItem.getLineNumber());
            pStatement.setString(3,lineItem.getItemId());
            pStatement.setInt(4,lineItem.getQuantity());
            pStatement.setBigDecimal(5,lineItem.getUnitPrice());

            DBUtil.closePreparedStatement(pStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
