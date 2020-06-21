package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Account;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountDAO {

    Account getAccountByUsername(String username);

    Account getAccountByUsernameAndPassword(Account account);

    void insertAccount(Account account);

    void insertProfile(Account account);

    void insertSignon(Account account);

    void updateAccount(Account account);

    void updateStatus(String username,Integer status);

    void updateProfile(Account account);

    void updateSignon(Account account);

    Account deleteSignon(boolean isLogin);

    boolean UsernameIsExist(String username);
}
