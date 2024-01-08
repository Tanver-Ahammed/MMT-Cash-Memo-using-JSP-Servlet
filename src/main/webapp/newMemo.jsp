<%--
  Created by IntelliJ IDEA.
  User: tanver
  Date: 12/30/21
  Time: 9:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<html>
<head>
    <title>MMT New Memo</title>
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
    <form action="memo" method="post">

        <fieldset class="form-group">
            <label><b>Customer Name</b></label>
            <input type="text" class="form-control" name="name" required="required">
        </fieldset>
        <fieldset class="form-group">
            <label><b>Customer Address</b></label>
            <input type="text" class="form-control" name="address" required="required">
        </fieldset>
        <fieldset class="form-group">
            <label><b>Customer Contact No</b></label>
            <input type="text" class="form-control" name="contact" required="required">
        </fieldset>

        <br>

        <fieldset class="form-group">
            <label>UREA</label>
            <input type="number" class="form-control" name="urea" required="required">
        </fieldset>
        <fieldset class="form-group">
            <label>M.O.P</label>
            <input type="number" class="form-control" name="mop" required="required">
        </fieldset>
        <fieldset class="form-group">
            <label>T.S.P</label>
            <input type="number" class="form-control" name="tsp" required="required">
        </fieldset>
        <fieldset class="form-group">
            <label>D.A.P</label>
            <input type="number" class="form-control" name="dap" required="required">
        </fieldset><br>

        <button type="submit" class="btn btn-success">Submit</button>


    </form>
</div>



<%--footer--%>
<footer class="bg-light text-center text-lg-start">
    <div class="text-center p-3">
        © 2005-2024 Copyright. All rights reserved.
        <a href="developer.jsp" style="right: 0">Developer</a>
    </div>
</footer>

</body>
</html>