<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ricerca Job Offer Per Id Skill'</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/JobOfferCtr/ricercaJobOfferPerSkill" method="get">
    <h2>Inserisci Id Skill :</h2>
    <input type="number" id="idSkill" name="idSkill" placeholder="Inserisci Id Skill'">
    <input type="submit" value="Cerca">
</form>
</body>
</html>