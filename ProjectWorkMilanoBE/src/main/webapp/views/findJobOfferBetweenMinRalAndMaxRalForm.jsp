<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job offer by ral</title>
</head>
<body>
	<h1>RICERCA OFFERTA DI LAVORO TRA UNA RAL MINIMA E UNA MASSIMA</h1>
	
	<form action = "${pageContext.request.contextPath}/JobOfferCtr/findJobOfferBetweenMinRalAndMaxRal" method="get">
		
		 inserisci la ral minima <br>
		<input type = "number" id = "minRal" name = "minRal"> <br>
		
		 inserisci la ral massima <br>
		<input type = "number" id = "maxRal" name = "maxRal"> <br>
		 
		<input type = "submit" value = "invia">
	</form>
</body>
</html>