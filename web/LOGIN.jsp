<%-- 
    Document   : login
    Created on : 19 Jul 2016, 12:31:49 PM
    Author     : Mpho
--%>

<%@ page import ="java.sql.*" %>
<%
    String Name = request.getParameter("Name");    
    String ID = request.getParameter("ID");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer",
            "root", "07834");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user where Name='" + Name + "' and ID='" + ID + "'");
    if (rs.next()) {
        session.setAttribute("Name", Name);
        session.setAttribute("ID", ID);
//        out.println("welcome " + ID);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("FEEDBACK.jsp");
    } else {
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
%>
