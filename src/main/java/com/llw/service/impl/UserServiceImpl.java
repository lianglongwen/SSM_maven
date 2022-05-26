package com.llw.service.impl;

import com.llw.dao.UserDao;
import com.llw.model.User;
import com.llw.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public User findByAccount(String account) {
        return userDao.findByAccount(account);
    }
}
