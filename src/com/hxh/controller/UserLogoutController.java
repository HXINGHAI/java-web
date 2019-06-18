package com.hxh.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: H_xinghai
 * @Date: 2019/6/17 9:42
 * @Description:
 */
@WebServlet("/logout")
public class UserLogoutController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
         doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        //Ïú»Ùsession
        request.getSession().invalidate();
        response.sendRedirect(request.getContextPath()+ "/login.jsp");
    }
}
