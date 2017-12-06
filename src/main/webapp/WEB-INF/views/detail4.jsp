<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">

</head>
<body>
	<form method="post">
		<table class="formtable">
			<tr>
				<td class="bor">년도</td>
				<td class="bor">학기</td>
				<td class="bor">교과코드</td>
				<td class="bor">교과명</td>
				<td class="bor">구분</td>
				<td class="bor">학점</td>
			</tr>

			<c:forEach var="subject" items="${subjects}">
				<c:if test="${subject.year == 2016 and subject.semester == 2}">
					<tr>
						<td class="bor"><c:out value="${subject.year}"></c:out></td>
						<td class="bor"><c:out value="${subject.semester}"></c:out></td>
						<td class="bor"><c:out value="${subject.code}"></c:out></td>
						<td class="bor"><c:out value="${subject.name}"></c:out></td>
						<td class="bor"><c:out value="${subject.divide}"></c:out></td>
						<td class="bor"><c:out value="${subject.grade}"></c:out></td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
	</form>
	<a href="${pageContext.request.contextPath}/subjects">뒤로가기</a><br/>
	<a href="${pageContext.request.contextPath}">메뉴로 돌아 가기</a>
</body>
</html>