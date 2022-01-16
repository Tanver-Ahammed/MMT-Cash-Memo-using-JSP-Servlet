<%--
  Created by IntelliJ IDEA.
  User: tanver
  Date: 12/31/21
  Time: 8:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<html>
<head>
    <title>Search ByMemo No</title>
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

<%
    if (session.getAttribute("message")== "not-found") {
        out.println("<div class=\"container col-md-5\"  style=\"color:red\">");
        out.println("<b>Please, Try....</b>");
        out.println("</div>");
    }
%>

<div class="container col-md-5">
    <form action="SearchByMemoNO" method="post">
        <fieldset class="form-group">
            <label><b>Customer's Memo No</b></label>
            <input type="text" class="form-control" name="memoNo" required="required">
        </fieldset><br>
        <button type="submit" class="btn btn-success">Submit</button>
    </form>
</div>

<%--footer--%>
<footer class="bg-light text-center text-lg-start">
    <div class="text-center p-3">
        © 2005-2021 Copyright. All rights reserved.
        <a href="developer.jsp" style="right: 0">Developer</a>
    </div>
</footer>

</body>
</html>
