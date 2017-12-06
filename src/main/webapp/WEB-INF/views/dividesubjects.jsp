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
	<form  method="post">
		<table class="formtable">
			<tr>
				<td class="bor">자율</td>
				<td class="bor">교필</td>
				<td class="bor">핵교</td>
				<td class="bor">전지</td>
				<td class="bor">전기</td>
				<td class="bor">전선</td>
				<td class="bor">총 학점</td>
			</tr>

			<c:set var="sum1" value="0" />
			<c:set var="sum2" value="0" />
			<c:set var="sum3" value="0" />
			<c:set var="sum4" value="0" />
			<c:set var="sum5" value="0" />
			<c:set var="sum6" value="0" />

			<c:forEach var="subject" items="${subjects}">

				<c:if test="${subject.divide eq '자율'}">
					<c:set var="sum1" value="${sum1 + subject.grade}" />
				</c:if>
				<c:if test="${subject.divide eq '교필'}">
					<c:set var="sum2" value="${sum2 + subject.grade}" />
				</c:if>
				<c:if test="${subject.divide eq '핵교A' or subject.divide eq '핵교B'}">
					<c:set var="sum3" value="${sum3 + subject.grade}" />
				</c:if>
				<c:if test="${subject.divide eq '전지'}">
					<c:set var="sum4" value="${sum4 + subject.grade}" />
				</c:if>
				<c:if test="${subject.divide eq '전기'}">
					<c:set var="sum5" value="${sum5 + subject.grade}" />
				</c:if>
				<c:if test="${subject.divide eq '전선'}">
					<c:set var="sum6" value="${sum6 + subject.grade}" />
				</c:if>

			</c:forEach>
			<tr>
				<td class="bor"><c:out value="${sum1}"></c:out></td>
				<td class="bor"><c:out value="${sum2}"></c:out></td>
				<td class="bor"><c:out value="${sum3}"></c:out></td>
				<td class="bor"><c:out value="${sum4}"></c:out></td>
				<td class="bor"><c:out value="${sum5}"></c:out></td>
				<td class="bor"><c:out value="${sum6}"></c:out></td>
				<td class="bor"><c:out value="${sum1+sum2+sum3+sum4+sum5+sum6}"></c:out></td>
			</tr>

		</table>
	</form>
	<a href="${pageContext.request.contextPath}">메뉴로 돌아 가기</a>
</body>
</html>