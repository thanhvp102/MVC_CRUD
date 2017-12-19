<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     
	<h1>Team List</h1>
	<h3>${msg}</h3>
	<table border=1>
		<tr>
			<th>ID</th>
			<th>TeamName</th>
			<th>CoachName</th>
			<th>NationalName</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="team" items="${list}">
			<tr>
				<td>${team.id}</td>
				<td>${team.teamname}</td>
				<td>${team.coachname}</td>
				<td>${team.nationalname}</td>
				<td><a href="get_id_edit/${team.id}">Edit</a></td>
				<td><a href="delete/${team.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<a href="form">Add New Employee</a><br>
	<a href="backindex">Back</a>
</body>
</html>