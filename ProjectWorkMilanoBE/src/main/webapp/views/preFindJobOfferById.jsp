<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ricerca Id Job Offer</title>
</head>
<body>

<h1>Ricerca Job Offer By idJobOffer</h1>

<form action="${pageContext.request.contextPath}/JobOfferCtr/preFindJobOfferById" method="post">
	
		<label for="idJobOffer">ID JOB OFFER:</label>
		<br>
		<input type="number" id="idJobOffer" name="idJobOffer">
		<br>
		<br>
	
		<input type="submit" value="Invia">
	</form>

</body>
</html>