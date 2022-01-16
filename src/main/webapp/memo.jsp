<%--
  Created by IntelliJ IDEA.
  User: tanver
  Date: 12/31/21
  Time: 2:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<html>
<head>
    <title>MMT Customer Memo</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>

<%--Navbar--%>
<div class="container-fluid p-0 m-0">
    <%@ include file="navbar_logout.jsp" %>
</div>

<%--Login restiction--%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    }
%>

<div class="container col-md-5">
    <h1>Messrs Mollik Traders</h1>
    <h3>Founder: Md. Mozaharul Islam</h3>
    <p>Contact: 01828-390031</p>
    <p>Date: ${customer.date}</p>
    <p>Address: Kaitahar, Amdoy, Joypurhat Sadar, Joypurhat.</p>
    <p>Here, You can get Chemical fertilizers and pesticides.</p>
</div>
<br>

<div class="container col-md-5">
    <h4><b>Customer Name: ${customer.name}</b></h4>
    <b>Customer Address: ${customer.address}</b><br>
    <b>Customer Contact: ${customer.contact}</b><br>
    <table>
        <tr>
            <th>Fertilizer Name</th>
            <th>Rate per Bag</th>
            <th>Quantity</th>
            <th>Amount</th>
        </tr>
        <tr>
            <td>Urea</td>
            <td>800</td>
            <td>${customer.urea}</td>
            <td>${customer.urea*800}</td>
        </tr>
        <tr>
            <td>M.O.P</td>
            <td>750</td>
            <td>${customer.mop}</td>
            <td>${customer.mop*750}</td>
        </tr>
        <tr>
            <td>T.S.P</td>
            <td>1100</td>
            <td>${customer.tsp}</td>
            <td>${customer.tsp*1100}</td>
        </tr>
        <tr>
            <td>D.A.P</td>
            <td>850</td>
            <td>${customer.dap}</td>
            <td>${customer.dap*800}</td>
        </tr>
        <tr>
            <td colspan="3">Total Amount:</td>
            <td>${customer.urea*800+customer.mop*750+customer.tsp*1100+customer.dap*800}</td>
        </tr>
    </table>
</div>

<br>
<br>
<br>
<br>

<%--footer--%>
<footer class="bg-light text-center text-lg-start">
    <div class="text-center p-3">
        © 2005-2021 Copyright. All rights reserved.
        <a href="developer.jsp" style="right: 0">Developer</a>
    </div>
</footer>

</body>
</html>
