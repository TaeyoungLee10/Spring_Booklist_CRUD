<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="home.jsp" %>

	<h1>새로운 책 추가하기</h1>
	<form:form method="post" action="save">

		<p>Title :</p>
		<form:input path="title" />

		<p>Author :</p>
		<form:input path="author" />

		<p>Comment :</p>
		<form:input path="comment" />

		<input type="submit" value="Save" />

	</form:form>
</body>
</html>