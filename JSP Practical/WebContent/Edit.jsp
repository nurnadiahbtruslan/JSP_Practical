<%//This page is to create form for edit student %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Form</title>

<script>
function validate(){
	//Show alert if name or department are not filled
	if(document.getElementById('name').value == ''){
		alert('Name is compulsory');
	}
	else if(document.getElementById('department').value == ''){
		alert('Department is compulsory');
	}
	else{
		//submit edit form
		document.getElementById('editForm').submit();
	}
}
</script>

</head>
<body>

<%//create action for submit button %>
<form action="EditProcess.jsp" method="POST" id= 'editForm'>
	
	<%//create edit form  %>
	<p>Student ID: <input type="text" name="id" value = "<%=request.getParameter("id") %>" /></p> 
	<p>New password: <input type ="password" name="newPass" id ="newPass"/></p>
	<p>Name: <input type="text" name="newName" id ='name'/></p>
	<p>Department: <input type="text" name="newDepartment" id= 'department' /></p>
	<p><button type="submit" onclick = "validate()">Submit</button></p>
	
</body>
</html>
