<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap"
	rel="stylesheet">
<style>
* {
	font-family: 'Roboto Slab', serif;
}

#maintitle {
	width: 100%;
	text-align: center;
	color: white;
	padding: 10px;
	background-color: rgb(102, 102, 255);
	margin-bottom: 0;
}


ul{
	margin: 0;
	padding:0;
}

li{
	list-style-type: none;
	
}

li a {
	text-decoration: none;
	color: black;
	display: inline-block;
	background-color: rgb(230, 230, 230);
	float: left;
	padding: 10px;
	padding-left: 30px;
	padding-right: 30px;
}

a:hover{
	color: white;
	background-color: rgb(130, 130, 130);
}
</style>
</head>
<body>

	<h1 id="maintitle">Welcome to Booklist CRUD</h1>

	<div id="nav">
		<ul>
			<li><a href="">Apptest</a></li>
			<li><a href="about">About</a></li>
			<li><a href="data">Data</a></li>
			<li><a href="viewemp">Books</a></li>

		</ul>
	</div>
	
	<br/>
	<br/>
	<br/>

</body>
</html>
