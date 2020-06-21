package org.csu.marchant.persistence;

import org.csu.marchant.domain.Account;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    //获取用户信息
    List<Account> getUsers();
    void updatePassword(String username);
}
