<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inserimento Job Offer</title>
</head>
<body>

<h2>Inserimento Job Offer</h2>

<form action="${pageContext.request.contextPath}/JobOfferCtr/preAddJobOffer" method="post">

		<label for="title">Title:</label>
		<br>
		<input type="text" id="title" name="title">
		<br>
		
		<label for="description">Description:</label>
		<br>
		<input type="text" id="description" name="description">
		<br>
		
		<label for="startDate">StartDate:</label>
		<br>
		<input type="date" id="startDate" name="startDate">
		<br>

		<label for="endDate">EndDate:</label>
		<br>
		<input type="date" id="endDate" name="endDate">
		<br>
		
		<label for="idCompanyClient">idCompanyClient:</label>
		<br>
		<input type="number" id="idCompanyClient" name="idCompanyClient">
		<br>
		
		<label for="minRal">minRal:</label>
		<br>
		<input type="number" id="minRal" name="minRal">
		<br>

		<label for="maxRal">MaxRal:</label>
		<br>
		<input type="number" id="maxRal" name="maxRal">
		<br>
		
		<label for="idContractType">idContractType:</label>
		<br>
		<input type="number" id="idContractType" name="idContractType">
		<br>
		
		<br>
		<label for="tipoOperazione">Tipo di operazione:</label>
		<br>
		<input type="text" id="tipo_operazione" name="tipo_operazione">
		<br>

 		<br>
		<input type="submit" value="Invia">
	</form>
</body>
</html>