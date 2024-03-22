<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ricerca Work Experience Per Id Candidate</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/wk/ricercaWEPerIdCandidate" method="post">
    <h2>Inserisci ID Candidato:</h2>
    <input type="text" id="idCandidate" name="idCandidate" placeholder="Inserisci ID Candidato">
    <input type="submit" value="Cerca">
</form>

</body>
</html>