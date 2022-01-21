package com.mmt.web.mmtcashmemo.web;

import com.mmt.web.mmtcashmemo.bean.Customer;
import com.mmt.web.mmtcashmemo.dao.MMTDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/SearchByMemoNO")
public class SearchByMemoNoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int memoNo = Integer.parseInt(request.getParameter("memoNo"));

            MMTDao mmtDao = new MMTDao();
            Customer customer = mmtDao.searchByMemoNo(memoNo);

            if (customer != null) {
                request.setAttribute("customer", customer);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("memo.jsp");
                requestDispatcher.forward(request, response);
            } else {
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("message", "not-found");
                response.sendRedirect("searchByMemoNo.jsp");
            }
        } catch (Exception e) {
            response.sendRedirect("error.jsp");
        }

    }

}
