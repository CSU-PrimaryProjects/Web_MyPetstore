package org.csu.mypetstore.persistence.impl;

import org.csu.mypetstore.persistence.DBUtil;
import org.csu.mypetstore.persistence.LogDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.function.DoubleBinaryOperator;

public class LogDAOImpl implements LogDAO {

    private static final String insertLogString = "insert into log (logUserId, logInfo) VALUES (?, ?)";

    @Override
    public void insertLog(String username, String logInfo) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(insertLogString);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, logInfo);

            preparedStatement.executeUpdate();
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
