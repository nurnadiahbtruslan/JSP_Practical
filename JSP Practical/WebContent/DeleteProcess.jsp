<%//This page is to create the process of deleting student %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Process</title>
</head>
<body>
<p>
	  <%
      boolean login=false;
      //check username and password in the database
      //to connect to database server
      String driverName = "com.mysql.jdbc.Driver";
      String connectionUr1 = "jdbc:mysql://localhost:3306/";
      String dbName = "db1";
      String userId = "root";
      String password ="Iya030299";
      
      Connection connection = null;
	  Statement statement = null;
	  
	  try{
		  login = true;
    	  //load the jdbc driver
    	  Class.forName(driverName);
    	  //connect to the database server
    	  connection = DriverManager.getConnection( connectionUr1 + dbName, userId, password);
    	  
      } catch(Exception e) {
    	  out.println(e.getMessage());
    	  }
	  
	  if (login){
		  try{
			  //Turn off auto commit
			  connection.setAutoCommit(false);
			 
			  //Create query for delete student
			  PreparedStatement stmt = connection.prepareStatement("delete from Student where id = ?");
			  stmt.setString(1,request.getParameter("id"));
			  
			  //Output query statement
			  System.out.println(stmt);
			  
			  //Execute query statement
			  int row = stmt.executeUpdate();
			  
			  //Set connection to commit
			  connection.commit();
			  
			  //Show the result
			  if(row>0){
				  out.println(row + " Student deleted ");
			  }  else{
				  out.println("Failed to delete student");
			  }
			   
			  //If execution fail
			  } catch(Exception e) {
				  //Show error message
		    	  out.println(e.getMessage());
				  //Set connection to rollback 
		    	  connection.rollback();
		      } 
		  
		      } else {
		     %>
		    	  <p>login failed</p>
		    <%
		    }%>
	  </p>
</body>
</html>
