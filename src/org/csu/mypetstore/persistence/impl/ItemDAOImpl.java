package org.csu.mypetstore.persistence.impl;

import org.csu.mypetstore.domain.*;
import org.csu.mypetstore.persistence.DBUtil;
import org.csu.mypetstore.persistence.ItemDAO;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ItemDAOImpl implements ItemDAO {
    private static final String UPDATE_INVENTORY_QUANTITY="UPDATE INVENTORY SET QTY = QTY - ? WHERE ITEMID = ?";
    private static final String GET_INVENTORY_QUANTITY="SELECT QTY AS value FROM INVENTORY  ITEMID = ?";
    private static final String GET_ITEM_LIST_BY_PRODUCT="SELECT I.ITEMID, LISTPRICE, UNITCOST, SUPPLIER AS supplierId, I.PRODUCTID AS 'product.productId', NAME AS 'product.name', DESCN AS 'product.description', CATEGORY AS 'product.categoryId', STATUS, ATTR1 AS attribute1, ATTR2 AS attribute2, ATTR3 AS attribute3, ATTR4 AS attribute4, ATTR5 AS attribute5 FROM ITEM I, PRODUCT P WHERE P.PRODUCTID = I.PRODUCTID AND I.PRODUCTID = ?";
    private static final String GET_ITEM="SELECT I.ITEMID, LISTPRICE, UNITCOST, SUPPLIER AS supplierId, I.PRODUCTID AS  'product.productId' , NAME AS 'product.name' , DESCN AS 'product.description' , CATEGORY AS  'product.categoryId' , STATUS, ATTR1 AS attribute1, ATTR2 AS attribute2, ATTR3 AS attribute3, ATTR4 AS attribute4, ATTR5 AS attribute5, QTY AS quantity from ITEM I, INVENTORY V, PRODUCT P where P.PRODUCTID = I.PRODUCTID and I.ITEMID = V.ITEMID and I.ITEMID = ?";
    private static final String INSERT_CARTS="INSERT INTO CARTS (USERID, ITEMID, PRODUCTID,QUANTITY,LISTPRICE) VALUES (?, ?, ?, ?, ?)";
    private static final String VIEWED_ITEMS="INSERT INTO VIEWEDITEM (i,USERID,ITEMID,ITEMNAME) VALUES (?,?,?, ?)";
    private static final String UPDATE_CARTS ="UPDATE CARTS SET USERID = ?,ITEMID =?,PRODUCTID=?,QUANTITY=?,LISTPRICE=? WHERE USERID = ?";
    private static final String UPDATE_ITEMS ="UPDATE VIEWEDITEM SET ITEMID = ?,ITEMNAME=? WHERE ITEMID = ?";
    private static final String getCarts="SELECT ITEMID,PRODUCTID,QUANTITY,LISTPRICE FROM CARTS WHERE USERID = ?";
    @Override
    public void updateInventoryQuantity(Map<String, Object> param){
        try{
            Connection connection= DBUtil.getConnection();
            PreparedStatement pStatement=connection.prepareStatement(UPDATE_INVENTORY_QUANTITY);
            String itemId=param.keySet().iterator().next();
            Integer increment=(Integer)param.get(itemId);
//            pStatement.setInt(1,increment.intValue());
            pStatement.setString(2,itemId);
            pStatement.executeUpdate();
            DBUtil.closePreparedStatement(pStatement);
            DBUtil.closeConnection(connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public int getInventoryQuantity(String itemId) {
        int result=-1;
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(GET_INVENTORY_QUANTITY);
            pStatement.setString(1,itemId);
            ResultSet resultSet = pStatement.executeQuery();
            if(resultSet.next())
            {
                result = resultSet.getInt(1);
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(pStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Item> getItemListByProduct(String productId) {
        List<Item>itemList=new ArrayList<Item>();
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(GET_ITEM_LIST_BY_PRODUCT);
            pStatement.setString(1,productId);
            ResultSet resultSet = pStatement.executeQuery();

            while (resultSet.next())
            {
                Item item=new Item();
                item.setItemId(resultSet.getString(1));
                item.setListPrice(resultSet.getBigDecimal(2));
                item.setUnitCost(resultSet.getBigDecimal(3));
                item.setSupplierId(resultSet.getInt(4));
                Product product=new Product();
                product.setProductId(resultSet.getString(5));
                product.setName(resultSet.getString(6));
                product.setDescription(resultSet.getString(7));
                product.setCategoryId(resultSet.getString(8));
                item.setStatus(resultSet.getString(9));
                item.setAttribute1(resultSet.getString(10));
                item.setAttribute2(resultSet.getString(11));
                item.setAttribute3(resultSet.getString(12));
                item.setAttribute4(resultSet.getString(13));
                item.setAttribute5(resultSet.getString(14));
                itemList.add(item);
                System.out.println(item.getProduct());
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(pStatement);
            DBUtil.closeConnection(connection);

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return itemList;
    }

    @Override
    public Item getItem(String itemId) {
        Item item=null;
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(GET_ITEM);
            pStatement.setString(1,itemId);
            ResultSet resultSet = pStatement.executeQuery();

            if (resultSet.next())
            {
                item=new Item();
                item.setItemId(resultSet.getString(1));
                item.setListPrice(resultSet.getBigDecimal(2));
                item.setUnitCost(resultSet.getBigDecimal(3));
                item.setSupplierId(resultSet.getInt(4));
                Product product=new Product();
                product.setProductId(resultSet.getString(5));
                product.setName(resultSet.getString(6));
                product.setDescription(resultSet.getString(7));
                product.setCategoryId(resultSet.getString(8));
                item.setProduct(product);
                item.setStatus(resultSet.getString(9));
                item.setAttribute1(resultSet.getString(10));
                item.setAttribute2(resultSet.getString(11));
                item.setAttribute3(resultSet.getString(12));
                item.setAttribute4(resultSet.getString(13));
                item.setAttribute5(resultSet.getString(14));
                item.setQuantity(resultSet.getInt(15));
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(pStatement);
            DBUtil.closeConnection(connection);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return item;
    }

    @Override
    public void insertCarts(String userId, String itemId, String productId, int quantity, BigDecimal listPrice) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(INSERT_CARTS);
            pStatement.setString(1,userId);
            pStatement.setString(2,itemId);
            pStatement.setString(3,productId);
            pStatement.setInt(4,quantity);
            pStatement.setString(5, String.valueOf(listPrice));
            pStatement.executeUpdate();
            DBUtil.closePreparedStatement(pStatement);
            DBUtil.closeConnection(connection);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void insertViewItem(String viewItem, String viewItemName) {
        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(VIEWED_ITEMS);
            pStatement.setString(1,"0");
            pStatement.setInt(2,0);
            pStatement.setString(3,viewItem);
            pStatement.setString(4,viewItemName);
            pStatement.executeUpdate();
            DBUtil.closePreparedStatement(pStatement);
            DBUtil.closeConnection(connection);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public Cart getCarts(String userId) {
        Cart cart=new Cart();
        try{
            Connection connection= DBUtil.getConnection();
            PreparedStatement pStatement=connection.prepareStatement(getCarts);
            pStatement.setString(1, userId);
            System.out.println(userId);
            ResultSet resultSet= pStatement.executeQuery();
            while (resultSet.next())
            {
                CartItem cartItem=new CartItem();
                cartItem.setItem(getItem(resultSet.getString(2)));
                cartItem.setQuantity(resultSet.getInt(4));
                cart.addItem(getItem(resultSet.getString(2)),true);
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(pStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e) {
            e.printStackTrace();
        }
        return cart;
    }
}
