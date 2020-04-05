package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Account;

public interface AccountService {
    public Account getAccount(String username) ;

    public Account getAccount(Account account);

    public void insertAccount(Account account) ;

    public void updateAccount(Account account) ;

    void updateStatus(String username,Integer status);

}
