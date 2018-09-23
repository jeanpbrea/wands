<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Wand Workshop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/dashboard.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body style="background-color: transparent;">
<div class="container">
	<div class="row">
		<h1 style="color:white; font-size:100px; text-align: center;">Wand Work Table</h1>
	</div>
	<div class="row">
		<h2 style="color:white;" >Welcome, <c:out value="${users.name}"></c:out></h2>
		</div>
	<ul class="nav justify-content-end">
		<li class="nav-item">
			<a href="/logout">LogOff</a>
		</li>
	</ul>
	<div class="row" style="text-align: center;">
	<p>This is your work table. Here At O.W.W we strive to build the best wand's in the world. Here you can see a list of wand's you have created, go to the Wand crafting table, where 
		you can create or reforge a wand. Destroy a wand you are unhappy with or see the detail's of each wand you created.
	</p>
	</div>
	<div class="row" style="text-align: center;">
		<h3 style="color:white;">Lets get started by making a wand <a href="/wands/new">Here</a></h3>
	</div>
	<h3 style="color:white;">My crafted wand's</h3>		
		<table class="table table-dark">
			<tr>
				<th>Wand</th>
				<th>Wand Creator</th>
				<th>Description</th>
				<th>Actions</th>
			</tr>
			<c:forEach var = "w" items="${wands}">
			<tr>
				<td><a href="/show/${w.id}"><c:out value="${w.wood}"></c:out> wood with a <c:out value="${w.core}"></c:out> Core <c:out value="${w.length}"></c:out>" <c:out value="${w.flex}"></c:out> flexibility</a></td>
				<td><c:out value="${w.creator}"></c:out></td>
				<td><c:out value="${w.description}"></c:out></td>
				<td><a href="/edit/${w.id}">Reforge</a>   |<td><a href="/delete/${w.id}">Destroy</a></td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>