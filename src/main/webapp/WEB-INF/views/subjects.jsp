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
				<td class="bor">이수학점</td>
				<td class="bor">상세 보기</td>
			</tr>
			<c:set var="n" value="0" />
			<c:forEach var="i" begin="2015" end="2017" step="1">
				<c:forEach var="j" begin="1" end="2" step="1">
					<c:set var="sum" value="0" />
					<c:forEach var="subject" items="${subjects}">
						<c:if test="${subject.year == i and subject.semester == j}">
							<c:set var="sum" value="${sum + subject.grade}" />
						</c:if>
					</c:forEach>
					<c:set var="n" value="${n+1}" />
					<tr>
						<td class="bor"><c:out value="${i}"></c:out></td>
						<td class="bor"><c:out value="${j}"></c:out></td>
						<td class="bor"><c:out value="${sum}"></c:out></td>
						<td class="bor"><a href="${pageContext.request.contextPath}/detail${n}">링크</a></td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
	</form>
	<a href="${pageContext.request.contextPath}">메뉴로 돌아 가기</a>
</body>
</html>