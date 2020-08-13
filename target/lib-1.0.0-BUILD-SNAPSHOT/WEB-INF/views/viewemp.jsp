<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		border-collapse: collapse;
	}
	a{
		color: black;
		text-decoration: none;
	}
	.btn{
		display: block;
		padding: 5px;
		text-align: center;
		border: 2px solid transparent;
		border-radious: 3px;
	}
	.a1{
		background-color: green;
		color: white;
	}
	.a2{
	
		background-color: yellow;
		color: black;
	}
	.a3{
		background-color: red;
		color: white;
	
	}
	.a4{
		color: blue;
	}
	
	
</style>
</head>
<body>

	<%@ include file="home.jsp" %>  

	
	<h1>List of books</h1>
	<table border="2" width="70%" cellpadding="2">
		<tr>
			<th>Title</th>
			<th>Author</th>
			<th>Comment</th>
			<th colspan="3"><a class="btn a1" href="empform">Add</a></th>
		</tr>
		<c:forEach var="emp" items="${list}">
			<tr>
				<td>${emp.title}</td>
				<td>${emp.author}</td>
				<td>${emp.comment}</td>
				<td><a class="btn a2" href="editemp/${emp.id}">Edit</a></td>
				<td><a class="btn a3" href="deleteemp/${emp.id}">Delete</a></td>
				<td><a class="btn a4" href="moreemp/${emp.id}">More</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	

</body>
</html>