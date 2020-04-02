package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.persistence.AccountDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;

@Service
public class AccountServiceImpl implements AccountService{

    @Autowired
    AccountDAO accountDAO;

    public Account getAccount(String username) {
        return accountDAO.getAccountByUsername(username);
    }

    public Account getAccount(String username, String password) {
        Account account = new Account();
        account.setUsername(username);
        account.setPassword(password);
        return accountDAO.getAccountByUsernameAndPassword(account);
    }

    public void insertAccount(Account account) {
        accountDAO.insertAccount(account);
    }

    public void updateAccount(Account account) {
        accountDAO.updateAccount(account);
    }
}