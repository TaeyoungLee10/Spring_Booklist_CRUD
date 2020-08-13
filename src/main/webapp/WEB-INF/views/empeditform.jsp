<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="home.jsp" %>

	<h1>기록 편집하기</h1>
	<form:form method="POST" action="/springbooklist/editsave">

		<form:hidden path="id" />

		<p>Title :</p>
		<form:input path="title" />

		<p>Author :</p>
		<form:input path="author" />

		<p>Comment :</p>
		<form:input path="comment" />

		<input type="submit" value="Update" />


	</form:form>
</body>
</html>