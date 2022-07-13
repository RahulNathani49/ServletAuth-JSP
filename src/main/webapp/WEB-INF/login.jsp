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
    <body>
               <h1>Login Here</h1>
        <form class="w-75 m-auto mt-5">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="username" placeholder="Enter username" name="username">
             </div>
             <div class="form-group">
                <label for="username">Password</label>
                <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="password" placeholder="Enter password" name="password">
             </div>
             
        <button type="submit" class="btn btn-success" value="">Login</button>
</form>
    </body>
</html>
