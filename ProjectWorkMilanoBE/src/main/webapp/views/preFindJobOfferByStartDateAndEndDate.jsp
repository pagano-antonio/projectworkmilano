<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ricerca date</title>
</head>
<body>

<h1>Ricerca Job Offer By Start Date End End Date</h1>

<form action="${pageContext.request.contextPath}/JobOfferCtr/preFindJobOfferByStartDateAndEndDate" method="post">
	
		 
		<label for="startDate">Data Inizio da cercare:</label>
		<br>
		<input type="Date" id="startDate" name="startDate">
		<br>
		
		<label for="endDate">Data Fine da cercare:</label>
		<br>
		<input type="Date" id="endDate" name="endDate">
		<br>
	
		<input type="submit" value="Invia">
	</form>
	

</body>
</html>