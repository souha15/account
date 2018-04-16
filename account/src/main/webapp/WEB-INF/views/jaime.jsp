<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/includes.jsp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form:form action="jaime.do" method="POST" commandName="jaime">
	<table>
		<tr>
			<td>conent text</td>
			<td><form:input path="idjaime" /></td>
		</tr>
		<tr>
			<td>contentfilel</td>
			<td><form:input  path="statut.idstatut" /></td>
		</tr>
		<tr>
			<td>userid</td>
			<td><form:input  path="user.iduser" /></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" name="action" value="Add">
				
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" />
				<input type="submit" name="action" value="Search" />
			</td>
		</tr>
	</table>
</form:form>
<br>
<table border="1">
	<th>ID</th>
	<th>Contentfile</th>
	<th>Contenttext</th>
	<th>date</th>
	<c:forEach items="${jaimeList}" var="jaime">
		<tr>
			<td>${jaime.idjaime}</td>
			<td>${jaime.statut.idstatut}</td>
			<td>${jaime.user.iduser}</td>
			
			 
		</tr>
	</c:forEach>
</table>

</body>
</html>