<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ricerca Id Company Client</title>
</head>
<body>

<h1>Ricerca Job Offer By idCompanyClient</h1>

<form action="${pageContext.request.contextPath}/JobOfferCtr/preFindJobOfferByIdCompanyClient" method="post">
	
		<label for="idCompanyClient">ID COMPANY CLIENT:</label>
		<br>
		<input type="number" id="idCompanyClient" name="idCompanyClient">
		<br>
		<br>
	
		<input type="submit" value="Invia">
	</form>

</body>
</html>