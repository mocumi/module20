
<%-- 
    Document   : newjsp
    Created on : 19 Jul 2016, 11:16:41 AM
    Author     : Mpho
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        
        <link href ="login.css" rel ="stylesheet" type ="text/css"/>
        <link href ="main.css" rel ="stylesheet" type ="text/css"/>
    </head>
    <body>
        <div id="wrapper">
         <h1>EBANK<small>The Future is now</small></h1>
  <div id="content">
      <nav>
  <ul id = "justaNav">
    <li><a href="REGISR.jsp">Sign Up</a></li>
    <li><a href="NEW.jsp">Sign in</a></li>	
    <li><a href="About.jsp">About us</a></li>
    <li><a href="contact.jsp">Contact Us</a></li>
    <li><a href="faq.jsp">FAQ</a></li>
  </ul>
      </nav>
  </div>
</div>
     
    <div id ="login">
            
            <h2>Please Login to continue</h2>
            
            <form Class = "boxCont" action = "LOGIN.jsp">
                
            
                <div>
                    <label for ="username">UserName</label>
                    <input id = "username" type = "text" name = "name" placeholder="Please enter username"/>
                </div>
                
                <div>
                    <label for ="password">Password</label>
                    <input id = "password" type = "text" name = "password" placeholder="Please enter password"/>
                </div>
                
                
		<div>
			<input type="submit" id="signIn" name="signIn" value="Login" class="btn left" />
			<input type="submit" id="signUp" name="signUp" value="Sign Up" class="btn right" />
		</div>
            
            
            
            </form>
            
            <a href="#" id="forgotpass">Forgot Your Password?</a>
        </div>
   </body>   
</html>
