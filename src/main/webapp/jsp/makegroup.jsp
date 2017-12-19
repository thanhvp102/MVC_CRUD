<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table style="width: 800px;" border="1">
		<tr>
			<td>
				<table>
					<c:forEach var="team" items="${list}" begin="0" end="0">
						<tr>
							<td style="font-weight: bold;">A</td>
						</tr>
						<tr>
							<td>1. ${team.key} <br> 2. ${team.value}
							</td>
						</tr>
					</c:forEach>
				</table>
			</td>
			<td>
				<table>
					<c:forEach var="team" items="${list}" begin="1" end="1">
						<tr>
							<td style="font-weight: bold;">B</td>
						</tr>
						<tr>
							<td>1. ${team.key} <br> 2. ${team.value}
							</td>
						</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table>
					<c:forEach var="team" items="${list}" begin="2" end="2">
						<tr>
							<td style="font-weight: bold;">C</td>
						</tr>
						<tr>
							<td>1. ${team.key} <br> 2. ${team.value}
							</td>
						</tr>
					</c:forEach>
				</table>
			</td>
			<td>
				<table>
					<c:forEach var="team" items="${list}" begin="3" end="3">
						<tr>
							<td style="font-weight: bold;">D</td>
						</tr>
						<tr>
							<td>1. ${team.key} <br> 2. ${team.value}
							</td>
						</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
	</table>

</body>
</html>