package org.csu.mypetstore.persistence.impl;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.persistence.AccountDAO;
import org.csu.mypetstore.persistence.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountDAOImpl implements AccountDAO {
    private static final String getAccountByUsername = "SELECT SIGNON.USERNAME,SIGNON.PASSWORD, ACCOUNT.EMAIL,ACCOUNT.FIRSTNAME, ACCOUNT.LASTNAME, ACCOUNT.STATUS, ACCOUNT.ADDR1 AS address1, ACCOUNT.ADDR2 AS address2, ACCOUNT.CITY, ACCOUNT.STATE, ACCOUNT.ZIP, ACCOUNT.COUNTRY, ACCOUNT.PHONE, PROFILE.LANGPREF AS languagePreference, PROFILE.FAVCATEGORY AS favouriteCategoryId, PROFILE.MYLISTOPT AS listOption, PROFILE.BANNEROPT AS bannerOption, BANNERDATA.BANNERNAME FROM ACCOUNT, PROFILE, SIGNON, BANNERDATA WHERE ACCOUNT.USERID =? AND SIGNON.USERNAME = ACCOUNT.USERID AND PROFILE.USERID = ACCOUNT.USERID AND PROFILE.FAVCATEGORY = BANNERDATA.FAVCATEGORY";
    private static final String getAccountByUsernameAndPassword = "SELECT SIGNON.USERNAME, ACCOUNT.EMAIL, ACCOUNT.FIRSTNAME, ACCOUNT.LASTNAME, ACCOUNT.STATUS, ACCOUNT.ADDR1 AS address1, ACCOUNT.ADDR2 AS address2, ACCOUNT.CITY, ACCOUNT.STATE, ACCOUNT.ZIP, ACCOUNT.COUNTRY, ACCOUNT.PHONE,PROFILE.LANGPREF AS languagePreference, PROFILE.FAVCATEGORY AS favouriteCategoryId, PROFILE.MYLISTOPT AS listOption, PROFILE.BANNEROPT AS bannerOption, BANNERDATA.BANNERNAME FROM ACCOUNT, PROFILE, SIGNON, BANNERDATA WHERE ACCOUNT.USERID =? AND SIGNON.PASSWORD =? AND SIGNON.USERNAME = ACCOUNT.USERID AND PROFILE.USERID = ACCOUNT.USERID AND PROFILE.FAVCATEGORY = BANNERDATA.FAVCATEGORY";
    private static final String deleteSignon = "SELECT ";
    private static final String insertAccount = "INSERT INTO ACCOUNT (USERID,EMAIL,FIRSTNAME, LASTNAME, STATUS, ADDR1, ADDR2, CITY, STATE, ZIP, COUNTRY, PHONE)  VALUES (?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String insertProfile = "INSERT INTO PROFILE (LANGPREF, FAVCATEGORY, USERID) VALUES (?, ?, ?)";
    private static final String insertSignon = "INSERT INTO SIGNON (PASSWORD,USERNAME) VALUES (?, ?)";
    private static final String updateAccount = "UPDATE ACCOUNT SET EMAIL = ?, FIRSTNAME = ?, ASTNAME = ?, STATUS = ?, ADDR1 = ?, ADDR2 = ?, CITY = ?, STATE = ?, ZIP = ?, COUNTRY = ?, PHONE = ? WHERE USERID = ?";
    private static final String updateProfile = "UPDATE PROFILE SET LANGPREF = ?, FAVCATEGORY = ? WHERE USERID = ?";
    private static final String updateSignon = "UPDATE SIGNON SET PASSWORD = ? WHERE USERNAME = ?";
    private static final String UsernameIsExist = "SELECT USERNAME AS USERNAME FROM ACCOUNT WHERE USERNAME=?";

    @Override
    public Account getAccountByUsername(String username) {
        Account account = null;
        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(getAccountByUsername);
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                account = new Account();
                account.setUsername(resultSet.getString(1));
                account.setPassword(resultSet.getString(2));
                account.setEmail(resultSet.getString(3));
                account.setFirstName(resultSet.getString(4));
                account.setLastName(resultSet.getString(5));
                account.setStatus(resultSet.getString(6));
                account.setAddress1(resultSet.getString(7));
                account.setAddress2(resultSet.getString(8));
                account.setCity(resultSet.getString(9));
                account.setState(resultSet.getString(10));
                account.setZip(resultSet.getString(11));
                account.setCountry(resultSet.getString(12));
                account.setPhone(resultSet.getString(13));
                account.setLanguagePreference(resultSet.getString(14));
                account.setFavouriteCategoryId(resultSet.getString(15));
                account.setListOption(resultSet.getBoolean(16));
                account.setBannerOption(resultSet.getBoolean(17));
                account.setBannerName(resultSet.getString(18));
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
        return account;
    }

    @Override
    public Account getAccountByUsernameAndPassword(Account account) {


        return null;
    }

    @Override
    public void insertAccount(Account account) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(insertAccount);
            pStatement.setString(1, account.getUsername());
            pStatement.setString(2, account.getEmail());
            pStatement.setString(3, account.getFirstName());
            pStatement.setString(4, account.getLastName());
            pStatement.setString(5, account.getStatus());
            pStatement.setString(6, account.getAddress1());
            pStatement.setString(7, account.getAddress2());
            pStatement.setString(8, account.getCity());
            pStatement.setString(9, account.getState());
            pStatement.setString(10, account.getZip());
            pStatement.setString(11, account.getCountry());
            pStatement.setString(12, account.getPhone());
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
    public void insertProfile(Account account) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(insertProfile);
            pStatement.setString(1, account.getLanguagePreference());
            pStatement.setString(2, account.getFavouriteCategoryId());
            pStatement.setString(3, account.getUsername());
            pStatement.executeUpdate();
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
    public void insertSignon(Account account) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(insertSignon);

            pStatement.setString(2, account.getPassword());
            pStatement.setString(1, account.getUsername());
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
    public void updateAccount(Account account) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(updateAccount);
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
    public void updateProfile(Account account) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(updateProfile);
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
    public void updateSignon(Account account) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(updateSignon);
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
    public Account deleteSignon(boolean isLogin) {
        Account account1 = new Account();
        account1.setIslogin(false);
        return account1;
    }

    @Override
    public boolean UsernameIsExist(String username) {
        boolean isExist = false;
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(UsernameIsExist);
            pStatement.setString(1, username);
            ResultSet resultSet = pStatement.executeQuery();
            if (resultSet.next())
                isExist = true;
            else
                isExist = false;
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(pStatement);
            DBUtil.closeConnection(connection);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isExist;
    }
}