<%-- 
    Document   : portal
    Created on : Jul 12, 2022, 4:43:58 PM
    Author     : isi
--%>

<%@page import="com.isimtl.users.models.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Portal</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <%
            User user = (User)request.getAttribute("loggeduser");
            String name = user.getName();
    %>
    <body>
        <div class="card m-auto mt-5 " style="width: 18rem;">
            <i class="fa-solid fa-user mt-3" style="font-size: 30px;text-align: center;"></i><!-- comment -->  
            <div class="card-body">
    <h5 class="card-title">Welcome <%= name %> </h5>
    
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="Login" class="btn btn-primary">Log Out</a>
  </div>
</div>
    </body>
</html>
