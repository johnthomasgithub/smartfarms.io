<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.sql.*" %>
<%-- page import="com.mysql.jdbc.Driver" --%>

<%
String userid=request.getParameter("uid");
String orderid=request.getParameter("oid");
String products=request.getParameter("pro");
String quantity=request.getParameter("quantity");
String date=request.getParameter("date");
String cost=request.getParameter("cost");
 
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/mysql", "root", "Pulsar@ns200");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into bill(userid,orderid,products,quantity,date,cost)values('"+userid+"','"+orderid+"','"+products+"','"+quantity+"','"+date+"','"+cost+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<html>
<body>
<jsp:forward page="finalpage.html"></jsp:forward>
</body>