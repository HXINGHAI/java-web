package com.hxh.dao;

import com.hxh.entity.User;

import java.util.List;

/**
 * @Author: H_xinghai
 * @Date: 2019/6/14 15:19
 * @Description:
 */

public interface UserDao {

    User selectUserByAccountAndPassword(String account,String password);

    List<User> selectAllUsers();

    void insertUser(User user);

    int selectCountByAccount(String account);


}
