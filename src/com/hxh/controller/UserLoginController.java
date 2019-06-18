package com.hxh.controller;

import com.hxh.entity.User;
import com.hxh.service.IUserservice;
import com.hxh.service.serviceimpl.UserServiceImpl;
import com.sun.deploy.net.HttpResponse;
import com.sun.xml.internal.ws.policy.privateutil.PolicyUtils;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOError;
import java.io.IOException;
import java.net.HttpRetryException;

/**
 * @Author: H_xinghai
 * @Date: 2019/6/16 13:27
 * @Description:
 */
@WebServlet("/login")
public class UserLoginController extends HttpServlet {

    private IUserservice userservice = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取相关的参数
        String account = request.getParameter("account");
        String password = request.getParameter("password");

        //验证登登陆信息
        User user = userservice.checkUserLogin(account,password);

        if (user == null){
            System.out.println("login false!");
            request.setAttribute("error","用户名或密码错误");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }

        System.out.println("login success!");
        request.getSession().setAttribute("user",user);

        //跳转页面
        response.sendRedirect(request.getContextPath()+ "/user.jsp");
    }
}
