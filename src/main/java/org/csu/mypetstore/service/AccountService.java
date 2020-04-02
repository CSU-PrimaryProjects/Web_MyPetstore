package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Account;

public interface AccountService {
    public Account getAccount(String username) ;

    public Account getAccount(String username, String password);


    public void insertAccount(Account account) ;

    public void updateAccount(Account account) ;

}
