<%//This page is to create form for new student %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Student Form</title>

<script>
//create validate function for submit button
function validate(){
	//Show alert if matric, password,name or department are not filled
	if(document.getElementById('id').value == ''){
		alert('Student ID is compulsory');
	}
	else if(document.getElementById('password').value == ''){
		alert('Password is compulsory');
	}
	else if(document.getElementById('name').value == ''){
		alert('Name is compulsory');
	}
	else if(document.getElementById('department').value == ''){
		alert('Department is compulsory');
	}
	//submit new student form
	else{
		document.getElementById('newStudentForm').submit();
	}
}
</script>
</head>
<body>

<%//create action for submit button %>
<form action="NewStudentProcess.jsp" method="POST" id=newStudentForm>
	
	<%//Create new student form %>
	<p>Student ID: <input type="text" name="id" id = 'id' /></p> 
	<p>Password: <input type="password" name="password" id = 'password'/></p>
	<p>Name: <input type="text" name="name" id ='name'/></p>
	<p>Department: <input type="text" name="department" id = 'department' /></p>
	</form>
	<p><button type="submit" onclick = "validate()">Submit</button></p>

</body>
</html>
