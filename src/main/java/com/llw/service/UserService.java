package com.llw.service;

import com.llw.model.User;

public interface UserService {
    User findByAccount(String account);
}
