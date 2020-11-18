<%//This page is to create form to delete student %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Form</title>

</head>
<body>
<%//Create action for delete button %>
<form action="DeleteProcess.jsp" method="POST" id= 'deleteForm'>
	
	<%//Create form to delete student%>
	<p>Confirm id to delete</p>
	<p>Student ID: <input type="text" name="id" value ="<%=request.getParameter("id") %>" id = 'id' /></p> 	
	<p><button type="submit">Submit</button></p></form>

</body>
</html>
