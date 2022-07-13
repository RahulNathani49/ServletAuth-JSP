<%-- 
    Document   : login
    Created on : Jul 12, 2022, 4:43:47 PM
    Author     : isi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Login Psge</title>
    </head>
    <% 
String userName = (String)request.getAttribute("username");
    if (request.getAttribute("username")==null) {
            userName="";
        }
    String password = (String)request.getAttribute("password");
    if (request.getAttribute("password")==null) {
            password="";
        }
    %>
      
    <body>
              
        <form class="w-75 m-auto mt-5" method="post" action="Login">
            <fieldset>
                <legend>Login</legend>
            <div class="form-group mb-3">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="username" placeholder="Enter username" name="username" value=<%= userName%>>
             </div>
             <div class="form-group mb-3">
                <label for="username">Password</label>
                <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="password" placeholder="Enter password" name="password" value=<%= password%>>
             </div>
          <small class="my-3" style="color:red">
                  <%
                    String message = (String)request.getAttribute("message");
        if(message==null)  {
        %>            
    <%
        } else {
    %>
        ${message}
    <%
        }
    %>
   
                </small>
   
        <button type="submit" class="btn btn-success w-100 mt-3" value="" >Login</button>
       <small>New User ? <a href="Signup">Sign up</a></small>

            </fieldset>
</form>
    </body>
</html>
