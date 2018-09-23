w<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> <c:out value="${wand.wood}"></c:out> wood with a <c:out value="${wand.core}"></c:out> Core <c:out value="${wand.length}"></c:out>" <c:out value="${wand.flex}"></c:out> flexibility</title>
		<link rel="stylesheet" type="text/css" href="/css/show.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	</head>
	<body style="background-color: transparent;">
	<div class="container">
	<div class="row">
		<h1 style="color:white; font-size:100px; text-align: center; font:georgia;">Ollivander's Wand Workshop</h1>
	</div>
	<img src="https://images.pottermore.com/bxd3o8b291gf/5RjL306vwQ2KikqE82eScK/afa6748e72bfc528d69b9d5e7e687616/wand-light_brown-average-ball_handle.png?h=225">
	<div class="row">
		<h1 style="color:white; font-size:55px; text-align:center;"><c:out value="${wand.wood}"></c:out> wood with a <c:out value="${wand.core}"></c:out> Core <c:out value="${wand.length}"></c:out>" <c:out value="${wand.flex}"></c:out> flexibility</h1>
	</div>
		<p style="color:white; font-size:45px;">Created By: <c:out value="${wand.creator}"/></p>
		<p style="color:white; font-size:45px;">Description: <c:out value="${wand.description}"/></p>
		<a href="/edit/${wand.id}">Reforge Wand</a>  |   <a href="/wands">Return to O.W.W</a>
		</div>
		
	</body>
</html>