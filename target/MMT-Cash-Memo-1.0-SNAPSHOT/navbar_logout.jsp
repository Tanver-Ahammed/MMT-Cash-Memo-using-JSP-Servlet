<%--
  Created by IntelliJ IDEA.
  User: tanver
  Date: 1/3/22
  Time: 12:05 PM
  To change this template use File | Settings | File Templates.
--%>

<nav class="navbar navbar-expand-lg navbar-Light purple">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp" style="color: white"><h2>MMT</h2></a>
    </div>
    <div class="container-fluid">
        <a class="navbar-brand" href="newMemo.jsp" style="color: white">New Memo</a>
    </div>
    <div class="dropdown col-md-7">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            Search
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="searchByMemoNo.jsp">Search By Memo No</a></li>
            <li><a class="dropdown-item" href="searchByCustomerName.jsp">Search By Customer Name</a></li>
        </ul>
    </div>
    <div class="container-fluid">
        <a class="navbar-brand" href="aboutUs.jsp" style="color: white"><p>About Us</p></a>
    </div>
    <div class="ontainer-fluid">
        <form class="d-flex" action="Logout">
            <button class="btn btn-success" type="submit">Logout</button>
        </form>
    </div>
</nav>
