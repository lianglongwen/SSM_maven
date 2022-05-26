package com.llw.dao;

import com.llw.model.User;

public interface UserDao {
    User findByAccount(String account);
}
