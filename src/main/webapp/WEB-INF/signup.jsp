<%-- 
    Document   : signup
    Created on : Jul 12, 2022, 4:42:47 PM
    Author     : isi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <%
    String userName = (String)request.getAttribute("username");
    if (request.getAttribute("username")==null) {
            userName="";
        }
    String name = (String)request.getAttribute("name");
    if (request.getAttribute("name")==null) {
            name="";
        }
    %>
    <body>
        <form class="w-75 m-auto mt-5" method="post" action="Signup?submit=true">
            <fieldset><!-- comment -->
                <legend>Signup</legend>
            <div class="form-group mb-2">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="username" placeholder="Enter username" name="username" value=<%= userName%> >
             </div>
             <div class="form-group mb-2">
                <label for="username">Password</label>
                <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="password" placeholder="Enter password" name="password">
             </div>
             <div class="form-group mb-2">
                <label for="password">Confirm Password</label>
                <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="confirm password" placeholder="Confirm password" name="confirmpassword">
             </div>
            <div class="form-group mb-2">
                <label for="password">Name</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="Name" placeholder="Enter name" name="name" value=<%= name%>>
             </div>
            <div class="form-group mb-2">
                <label for="password">Date of Birth</label>
                <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="date of birth" placeholder="Select date of birth" name="dateofbirth">
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
        <button type="submit" class="btn btn-success w-100 mt-3">Sign up</button>
        <small>Already have an account? <a href="Login">Login</a></small>
            </fieldset>
</form>
    </body>
</html>
