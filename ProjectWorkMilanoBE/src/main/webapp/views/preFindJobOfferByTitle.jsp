<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ricerca titolo</title>
</head>
<body>

<h1>Ricerca Job Offer By Title</h1>

<form action="${pageContext.request.contextPath}/JobOfferCtr/preFindJobOfferByTitle" method="post">
	
		<label for="title">Title:</label>
		<br>
		<input type="text" id="title" name="title">
		<br>
		<br>
	
		<input type="submit" value="Invia">
	</form>

</body>
</html>