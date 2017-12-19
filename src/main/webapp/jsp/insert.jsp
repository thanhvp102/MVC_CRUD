<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Add New Employee</h1>
<form:form method="post" action="insert">
	<table border=1>
		<tr>
			<td>TeamName :</td>
			<td>CoachName :</td>
			<td>NationalName :</td>
		</tr>
		<tr>
			
			<td><form:input path="teamname" /></td>
			<td><form:input path="coachname" /></td>
			<td><form:input path="nationalname" /></td>
		</tr>
		<tr>
			<td ><input type="submit" value="Save" /></td>
		</tr>
	</table>
	<br><a href="backindex">Back</a>
</form:form>
