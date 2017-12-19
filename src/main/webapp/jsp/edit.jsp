<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Edit Employee</h1>
<form:form method="POST" action="/MVC-CRUD/editform">
	<table>
		<tr>
			<td></td>
			<td><form:hidden path="id" /></td>
		</tr>
		<tr>
			<td>TeamName :</td>
			<td><form:input path="teamname" /></td>
		</tr>
		<tr>
			<td>CoachName :</td>
			<td><form:input path="coachname" /></td>
		</tr>
		<tr>
			<td>NationalName :</td>
			<td><form:input path="nationalname" /></td>
		</tr>

		<tr>
			<td></td>
			<td><input type="submit" value="Edit" /></td>
		</tr>
	</table>
	<br><a href="backindex">Back</a>
</form:form>
