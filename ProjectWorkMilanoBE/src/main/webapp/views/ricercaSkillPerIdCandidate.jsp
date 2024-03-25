<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ricerca Skill Per ID Candidate</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/skill/ricercaSkillPerIdCandidate" method="get">
    <h2>Inserisci Compagnia :</h2>
    <input type="text" id="idCandidate" name="idCandidate" placeholder="Inserisci idCandidate'">
    <input type="submit" value="Cerca">
</form>

</body>
</html>