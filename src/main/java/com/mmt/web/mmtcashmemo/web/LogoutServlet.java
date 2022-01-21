package com.mmt.web.mmtcashmemo.web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/Logout")
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession httpSession = request.getSession();
            httpSession.removeAttribute("username");
            httpSession.invalidate();
            response.sendRedirect("login.jsp");
        } catch (Exception e) {
            response.sendRedirect("error.jsp");
        }
    }

}
