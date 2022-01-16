<%--
  Created by IntelliJ IDEA.
  User: tanver
  Date: 12/31/21
  Time: 8:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Search By Customer Name</title>
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
<br>

<div class="container col-md-11">
    <form action="SearchByCustomerName" method="post">
        <button type="submit" class="btn btn-success">Show All Customer</button>
    </form>
</div>


<div class="row">
    <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->
    <div class="container col-md-10">
        <h3 class="text-center">List of Customer</h3>
        <hr>

        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Memo No</th>
                <th>Name</th>
                <th>Contact</th>
            </tr>
            </thead>
            <tbody>
            <!--   for (Todo todo: todos) {  -->
            <c:forEach var="customer" items="${customerList}">
                <tr>
                    <td>
                        <c:out value="${customer.memoNo}"/>
                    </td>
                    <td>
                        <c:out value="${customer.name}"/>
                    </td>
                    <td>
                        <c:out value="${customer.contact}"/>
                    </td>
                </tr>
            </c:forEach>
            <!-- } -->
            </tbody>

        </table>
    </div>
</div>

<br><br><br>

<%--footer--%>
<footer class="bg-light text-center text-lg-start">
    <div class="text-center p-3">
        © 2005-2021 Copyright. All rights reserved.
        <a href="developer.jsp" style="right: 0">Developer</a>
    </div>
</footer>

</body>
</html>
