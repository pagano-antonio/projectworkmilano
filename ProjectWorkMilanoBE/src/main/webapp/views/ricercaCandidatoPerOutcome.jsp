<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ricerca Candidato Per Outcome</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/candidate/ricercaCandidatoPerOutcome" method="post">
    <h2>Inserisci Compagnia :</h2>
    <input type="text" id="outcome" name="outcome" placeholder="Inserisci Outcome'">
    <input type="submit" value="Cerca">
</form>
</body>
</html>