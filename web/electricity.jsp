<%-- 
    Document   : electricity
    Created on : 24 Aug 2016, 10:01:02 AM
    Author     : Mpho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import ="java.sql.*"
         import = "java.util.*"%>
<%
  
    String MeterNumber = request.getParameter("MeterNumber");    
    String Supplier = request.getParameter("Supplier");
    String AccountNumber = request.getParameter("AccountNumber");
    String Coupon = request.getParameter("Coupon");
    String Amount = request.getParameter("Amount");
    
    
     
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer",
            "root", "07834");
    String query = "SELECT amount FROM transaction WHERE account_no = '"+AccountNumber+"'";
    
    PreparedStatement ps = con.prepareStatement(query);
    
    ResultSet rs = ps.executeQuery();
    
    while(rs.next()){
    String bal = rs.getString("amount");
    
    int BAL = Integer.parseInt(bal);
    int AMT = Integer.parseInt(Amount);
    
    if(BAL == 0){
    out.println("insufficient funds");
    }
    if(BAL < AMT){
    out.println("You Only Have " + BAL);
    }else{
    
    Statement statement = con.createStatement();

    statement.executeUpdate("UPDATE transaction SET amount = (amount - '"+Amount+"') WHERE account_no ='" + AccountNumber + "'" );
   
    }
    }
    
    
        
     
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Electricity</title>
    </head>
    <body>
        
         <script>
            function coupon(){
                
                
               
                var mee = 11 + Math.floor(Math.random()* 12)+1;
                var meea = 11 + Math.floor(Math.random()* 12)+1;
                var mees = 11 + Math.floor(Math.random()* 12)+1;
                var a = 11  + Math.floor(Math.random()* 12)+1;
                var b =11 + Math.floor(Math.random()* 12)+1;
                var c =11 + Math.floor(Math.random()* 12)+1;
                  
                var gift = 45 + ""+ mee+""+a+""+b+""+c+""+meea+""+mees;
                alert(gift+"");
                document.getElementById('mpho').value = ''+gift;
                
              
            }
        </script>
        <form>
            <center>
                <table>
                    <tr>
            <h3>Buy electricity here!!!</h3>
           
            <td>Account Number<label/></td>
            <td><input type="text" name="AccountNumber" value=""  /></td>
</tr>
<tr>
    <td>Meter Number</td>
    <td><input type="text" name="MeterNumber" value="" /></td>
</tr><tr>
<td>Supplier</td>
<td><input type="text" name="Supplier" value="" /></td>
</tr><tr>
        
<!--         <label>Account Number<label/>
        <input type="text" name="AccountNumber" value="" /><br>-->
         <td>Amount</td>
         <td><input type="text" name="Amount" value="" /></td>
</tr><tr>
    <td><input type ="submit" value="submit" onclick ="coupon()"></td>
</tr>

 </center>
        </form>
</table>
                
                
                
                
    </body>
</html>
