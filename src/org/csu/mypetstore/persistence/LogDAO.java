package org.csu.mypetstore.persistence;

public interface LogDAO {
    void insertLog(String username, String logInfo);
}
