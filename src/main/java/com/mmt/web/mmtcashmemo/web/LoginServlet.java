package com.mmt.web.mmtcashmemo.web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            out.println(username);
            out.println(password);

            if (username.equals("Tanver_Ahammed") && password.equals("mmt")) {
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("username", username);
                response.sendRedirect("welcome.jsp");
            } else {
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("message", "wrong");
                out.println("Your username or Password is wrong!!");
                response.sendRedirect("login.jsp");
            }
        }catch (Exception e) {
            response.sendRedirect("error.jsp");
        }

    }

}
