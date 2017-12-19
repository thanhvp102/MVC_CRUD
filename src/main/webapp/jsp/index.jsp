<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<h2>Hello:${userSession.username}</h2>
<table border="1">
	<tr>
		<td colspan="2" style="text-align: center"><jsp:include
				page="/jsp/banner.jsp" /></td>
	</tr>
	<tr>
		<td><jsp:include page="/jsp/menuLeft.jsp" /></td>
		<td style="text-align: center"><jsp:include page="/jsp/body.jsp" /></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align: center"><jsp:include
				page="/jsp/footer.jsp" /></td>
	</tr>
</table>

