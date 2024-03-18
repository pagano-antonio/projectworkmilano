<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ricerca Candidato Per Compagnia</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/candidate/ricercaCandidatoPerCompagnia" method="get">
    <h2>Inserisci Compagnia :</h2>
    <input type="text" id="company" name="company" placeholder="Inserisci Compagnia'">
    <input type="submit" value="Cerca">
</form>

</body>
</html>