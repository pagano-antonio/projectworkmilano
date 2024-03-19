<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CANDIDATE SKILL</title>
</head>
<body>
	<h1>RICERCA CANDIDATO TRAMITE SKILL</h1>
<form action = "${pageContext.request.contextPath}/candidate/findCandidateBySkill" method="get">
		
		 inserisci la skill <br>
		<input type = "text" id = "title" name = "title"> <br>
		 
		<input type = "submit" value = "invia">
</form>

</body>
</html>