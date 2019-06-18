package com.hxh.controller;

import com.hxh.entity.User;
import com.hxh.service.IUserservice;
import com.hxh.service.serviceimpl.UserServiceImpl;
import com.sun.xml.internal.ws.util.StringUtils;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: H_xinghai
 * @Date: 2019/6/17 9:51
 * @Description:
 */
@WebServlet("/register")
public class UserRegisterController extends HttpServlet {

    private IUserservice userservice = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String msg = "";
        String account = request.getParameter("account");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");

        if (account.isEmpty() || username.isEmpty() || password.isEmpty() ||password2.isEmpty()){
            msg = "The box message cannot be empty! please checked it out";
        }
        if (!password.equals(password2)){
            msg = "The password is not equals";
        }

        if (msg.isEmpty()){
            User user = new User();
            user.setAccount(account);
            user.setUsername(username);
            user.setPassword(password);
            user.setSex("男");

            userservice.addtUser(user);
            msg = "Register success!";
        }
        //TODO:更改设置，这里无论怎样都会跳转到登陆
        request.setAttribute("msg",msg);
        request.getRequestDispatcher("/login.jsp").forward(request,response);
        return;
    }
}
