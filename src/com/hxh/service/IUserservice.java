package com.hxh.service;

import com.hxh.entity.User;

import java.util.List;

/**
 * @Author: H_xinghai
 * @Date: 2019/6/14 15:29
 * @Description:
 */

public interface IUserservice {

    User checkUserLogin(String account,String password);

    List<User> getAllUsers();

    void addtUser(User user);

    int checkUserAccount(String account);
}
