package com.hxh.service.serviceimpl;

import com.hxh.dao.UserDao;
import com.hxh.dao.impl.UserDaoimpl;
import com.hxh.entity.User;
import com.hxh.service.IUserservice;

import java.util.List;

/**
 * @Author: H_xinghai
 * @Date: 2019/6/14 15:30
 * @Description:
 */

public class UserServiceImpl implements IUserservice {
    private UserDao userDao = new UserDaoimpl();
    @Override
    public User checkUserLogin(String account, String password) {
        return userDao.selectUserByAccountAndPassword(account, password);
    }

    @Override
    public List<User> getAllUsers(){
        return userDao.selectAllUsers();
    }
    @Override
    public void addtUser(User user){
        userDao.insertUser(user);
    }

    @Override
    public int checkUserAccount(String account){
        return userDao.selectCountByAccount(account);
    }

}
