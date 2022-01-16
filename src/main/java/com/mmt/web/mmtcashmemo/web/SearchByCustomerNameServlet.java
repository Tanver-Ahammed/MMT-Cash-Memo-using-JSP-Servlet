package com.mmt.web.mmtcashmemo.web;

import com.mmt.web.mmtcashmemo.bean.Customer;
import com.mmt.web.mmtcashmemo.dao.MMTDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/SearchByCustomerName")
public class SearchByCustomerNameServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");

        MMTDao mmtDao = new MMTDao();
        List<Customer> customerList = mmtDao.searchByCusName(name);

        if (!customerList.isEmpty()) {
            request.setAttribute("customerList", customerList);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("searchByCustomerName.jsp");
            requestDispatcher.forward(request, response);
        }
        System.out.println(customerList);
    }
}
