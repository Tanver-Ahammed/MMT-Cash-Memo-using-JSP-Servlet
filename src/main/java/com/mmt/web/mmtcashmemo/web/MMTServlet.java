package com.mmt.web.mmtcashmemo.web;

import com.mmt.web.mmtcashmemo.bean.Customer;
import com.mmt.web.mmtcashmemo.dao.MMTDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/memo")
public class MMTServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String contact = request.getParameter("contact");
            int urea = Integer.parseInt(request.getParameter("urea"));
            int mop = Integer.parseInt(request.getParameter("mop"));
            int tsp = Integer.parseInt(request.getParameter("tsp"));
            int dap = Integer.parseInt(request.getParameter("dap"));

            Date currentDate = new Date();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("d MMMM, yyyy");
            String date = simpleDateFormat.format(currentDate);


            Customer customer = new Customer(name, address, contact, date, urea, mop, tsp, dap);
            MMTDao mmtDao = new MMTDao();
            int affectedRow = mmtDao.insertCustomer(customer);

            if (affectedRow > 0) {
                request.setAttribute("customer", customer);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("memo.jsp");
                requestDispatcher.forward(request, response);
            }

        } catch (Exception e) {
            response.sendRedirect("error.jsp");
        }

    }
}
