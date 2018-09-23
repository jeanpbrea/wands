<%@ page isErrorPage="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Reforge</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="/css/edit.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	</head>
	<body style="background-color: transparent;">
	<div class="container">
	<div class="row">
		<h1 style="color:white; font-size:100px; text-align: center; font:georgia;">Ollivander's Wand Workshop Reforger</h1>
	</div>
	<h1 style="color:white;font-size:55px;text-align: center;"><c:out value="${wand.wood}"></c:out> wood with a <c:out value="${wand.core}"></c:out> Core <c:out value="${wand.length}"></c:out>" <c:out value="${wand.flex}"></c:out> flexibility</h1>
	<img src="https://images.pottermore.com/bxd3o8b291gf/5RjL306vwQ2KikqE82eScK/afa6748e72bfc528d69b9d5e7e687616/wand-light_brown-average-ball_handle.png?h=225">
    <p><form:errors path="wand.*"/></p>
    <form:form method="POST" action="/edit/${wand.id}" modelAttribute="editwand">
        <input type="hidden" name="_method" value="put">
        <p>
           <form:label path="wood" style="color:white;">Choose a type of wood:</form:label>
           <form:select path="wood">
			  <form:option value="Acacia">Acacia</form:option>
			  <form:option value="Alder">Alder</form:option>
			  <form:option value="Apple">Apple</form:option>
			  <form:option value="Ash">Ash</form:option>
			  <form:option value="Aspen">Aspen</form:option>
			  <form:option value="Cedar">Cedar</form:option>
			  <form:option value="Elder">Elder</form:option>
			  <form:option value="Holly">Holly</form:option>
			  <form:option value="Walnut">Walnut</form:option>
			  <form:option value="Yew">Yew</form:option>
			</form:select>
        </p>
         <p>
           <form:label path="core" style="color:white;">Choose a core for the wand:</form:label>
           <form:select path="core">
			  <form:option value="Unicorn Hair">Unicorn Hair</form:option>
			  <form:option value="Dragon Heartstring">Dragon Heartstring</form:option>
			  <form:option value="Phoenix Feather">Phoenix Feather</form:option>
			</form:select>
        </p>
        <p>
        	<form:label path="length" style="color:white;">Wand Length:</form:label>
            <form:errors path="length"/>
            <form:input path="length" value="${wand.length}"/>
        </p>
        <p>
        	<form:label path="flex" style="color:white;">Wand flexibility:</form:label>
            <form:errors path="flex"/>
            <form:input path="flex" value="${wand.flex}"/>
        </p>
        <p>
        	<form:label path="description" style="color:white;">Describe this Wand:</form:label>
            <form:errors path="description"/>
            <form:input path="description" value="${wand.description}"/>
        </p>
        <form:input type="hidden" path="creator" value="${user.name}"/>
        <input type="submit" value="Reforge this Wand"/>
    </form:form>
    <a href="/wands">Return to O.W.W</a>
</div>
	</body>
</html>
	