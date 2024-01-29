<%--
  Created by IntelliJ IDEA.
  User: tanver
  Date: 12/31/21
  Time: 6:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MMT</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>

<%--Navbar--%>
<div class="container-fluid p-0 m-0">
    <%@ include file="navbar_login.jsp" %>
</div>


<div class="container col-md-5">
    <h1>Meserse Mollik Traderse</h1>
    <p><b>Founder: Md. Mozaharul Islam</b></p>
    <p>01828-280055</p>
    <p>Kaitahar Bazar, Somsira, Joypurhat Sadar, Joypurhat</p> <br>

    <caption><b>Price List:</b></caption>
    <table>
        <tr>
            <th>Fertilizer Name</th>
            <th>Price per Bag</th>
            <th>Price per kg</th>
        </tr>
        <tr>
            <td>Urea</td>
            <td>800</td>
            <td>16</td>
        </tr>
        <tr>
            <td>M.O.P</td>
            <td>750</td>
            <td>15</td>
        </tr>
        <tr>
            <td>T.S.P</td>
            <td>1100</td>
            <td>22</td>
        </tr>
        <tr>
            <td>D.A.P</td>
            <td>800</td>
            <td>16</td>
        </tr>
    </table>
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
