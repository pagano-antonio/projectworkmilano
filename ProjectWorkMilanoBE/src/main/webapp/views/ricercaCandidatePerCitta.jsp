<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ricerca Candidate Per Citta'</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/candidate/ricercaCandidatePerCitta" method="get">
    <h2>Inserisci Citta' :</h2>
    <input type="text" id="city" name="city" placeholder="Inserisci Citta'">
    <input type="submit" value="Cerca">
</form>
</body>
</html>