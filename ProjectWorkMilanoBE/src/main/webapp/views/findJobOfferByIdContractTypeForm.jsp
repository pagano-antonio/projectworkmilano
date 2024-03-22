<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job offer by idContract</title>
</head>
<body>
	<h1>RICERCA OFFERTA DI LAVORO TRAMITE ID CONTRATTO</h1>
	
	<form action = "${pageContext.request.contextPath}/JobOfferCtr/findJobOfferByIdContractType" method="get">
		
		 inserisci l'idContractType <br>
		<input type = "number" id = "idContractType" name = "idContractType"> <br>		 
		 
		<input type = "submit" value = "invia">
	</form>
</body>
</html>