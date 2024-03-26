<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ricerca Skill By ID</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/skill/ricercaSkillById" method="GET">
    <h2>Inserisci Id Skill :</h2>
    <input type="text" id="idSkill" name="idSkill" placeholder="Inserisci Id Skill'">
    <input type="submit" value="Cerca">
</form>
</body>
</html>