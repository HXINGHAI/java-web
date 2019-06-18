package com.hxh.dao.impl;

import com.hxh.dao.UserDao;
import com.hxh.entity.User;
import com.hxh.util.DBUtils;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author: H_xinghai
 * @Date: 2019/6/14 15:39
 * @Description:
 */

public class UserDaoimpl implements UserDao {

    //根据账号密码查询用户
    @Override
    public User selectUserByAccountAndPassword(String account,String password){
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select * from t_user where account = ? and password = ?";
        User user = null;
        try {
            if(DBUtils.getConnection() != null) {

                connection = DBUtils.getConnection();
                ps = connection.prepareStatement(sql);
                ps.setString(1, account);
                ps.setString(2, password);
                rs = ps.executeQuery();
                while (rs.next()) {
                    user = new User();
                    user.setId(rs.getInt("id"));
                    user.setAccount(rs.getString("account"));
                    user.setPassword(rs.getString("password"));
                    user.setUsername(rs.getString("username"));
                    user.setSex(rs.getString("sex"));
                    user.setAge(rs.getInt("age"));
                    user.setEmial(rs.getString("email"));
                }
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DBUtils.close(rs,ps,connection);
        }
        return user;
    }

    //获取所有用户


    @Override
    public List<User> selectAllUsers(){
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select * from t_user";
        List<User> users = new ArrayList<User>();

        try {
            connection = DBUtils.getConnection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()){
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setAccount(rs.getString("account"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmial(rs.getString("emial"));
                user.setSex(rs.getString("sex"));
                user.setAge(rs.getInt("age"));

                users.add(user);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DBUtils.close(rs,ps,connection);
        }
        return users;
    }

    //注册用户
    @Override
    public void insertUser(User user){
        Connection connection = null;
        PreparedStatement ps = null;
        String sql = "insert into t_user(account,password,username,sex) values(?,?,?,?)";
        try {
            connection = DBUtils.getConnection();
            ps = connection.prepareStatement(sql);
            ps.setString(1, user.getAccount());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getUsername());
            ps.setString(4, user.getSex());

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.close(null, ps, connection);
        }
    }

    @Override
    public int selectCountByAccount(String account){
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select count(*) as con from t_user where account = ?";
        int count = 0;
        try {
            connection = DBUtils.getConnection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()){
                  count = rs.getInt("con");
            }
        }catch (SQLException e){
            e.getErrorCode();
        }finally {
            DBUtils.close(rs,ps,connection);
        }
        return count;
    }
}
