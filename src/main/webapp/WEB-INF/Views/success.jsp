<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored= "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<br>
	<h1 style="text-align: center">Student Details</h1>
	<hr>
	
	
	<h2>Name : ${student.name }</h2>
	<h2>DOB : ${student.dob}</h2>
	<h2>Course : ${student.course }</h2>
	<h2>Student Type : ${student.studentType }</h2>
	<h2>contact : ${student.contact }</h2>
	<h2>Gender : ${student.gender }</h2>
	<h2>Address:-</h2>
	<h2>Street : ${student.address.street }</h2>
	<h2>City : ${student.address.city }</h2>
	<h2>Zip Code : ${student.address.zipCode }</h2>
</body>
</html>