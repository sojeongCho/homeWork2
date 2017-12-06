<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>

	<sf:form method="post"
		action="${pageContext.request.contextPath }/docreate"
		modelAttribute="subject">

		<table class="formtable">
			<tr>
				<td class="label">Code:</td>
				<td><sf:input class="control" type="text" path="code" /><br />
					<sf:errors path="code" class="error" /></td>
			</tr>
			<tr>
				<td class="label">Name:</td>
				<td><sf:input class="control" type="text" path="name" /><br />
					<sf:errors path="name" class="error" /></td>
			</tr>

			<tr>
				<td class="label">Year:</td>
				<td><sf:input class="control" type="number" path="year"
						value="2018" min="2018" /><br /></td>
			</tr>
			<tr>
				<td class="label">Semester:</td>
				<td><sf:input class="control" type="number" path="semester"
						value="1" min="1" max="2" /><br /></td>
			</tr>

			<tr>
				<td class="label">Grade:</td>
				<td><sf:input class="control" type="number" path="grade"
						value="1" min="1" max="3" /><br /></td>
			</tr>
			<tr>
				<td class="label">Divide:</td>
				<td><sf:input class="control" type="text" path="divide" /><br />
					<sf:errors path="divide" class="error"/></td>
			</tr>
			<tr>
				<td class="label"></td>
				<td><input class="control" type="submit" value="수강 신청" /></td>
			</tr>
		</table>

	</sf:form>

</body>
</html>