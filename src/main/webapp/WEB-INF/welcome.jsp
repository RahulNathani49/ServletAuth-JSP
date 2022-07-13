<%-- 
    Document   : welcome
    Created on : Jul 12, 2022, 4:43:15 PM
    Author     : isi
--%>

<%@page import="com.isimtl.users.services.userServices"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% userServices service = (userServices)request.getAttribute("service"); %>
<% request.setAttribute("service",service);%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <div class="card m-auto mt-5" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Welcome <%= request.getAttribute("name") %></h5>
    <p class="card-text">Please Login</p>
    <a href="Login" class="btn btn-success">Login</a>
  </div>
</div>
    </body>
</html>
