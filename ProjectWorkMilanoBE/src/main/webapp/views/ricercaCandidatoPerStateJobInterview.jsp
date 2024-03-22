<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ricerca Candidate Per Job Interview</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/candidate/ricercaCandidatoPerStateJobInterview" method="get">
    <h2>Inserisci Compagnia :</h2>
    <input type="text" id="idStateJobInterview" name="idStateJobInterview" placeholder="Inserisci Id State Job Interview'">
    <input type="submit" value="Cerca">
</form>

</body>
</html>

