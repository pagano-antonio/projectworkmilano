<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inserimento Skill</title>
</head>
<body>

<h2>Inserimento Skill</h2>

<form action="${pageContext.request.contextPath}/skill/preAddSkill" method="post">

		<label for="title">Title:</label>
		<br>
		<input type="text" id="title" name="title">
		<br>
		
		<label for="description">Description:</label>
		<br>
		<input type="text" id="description" name="description">
		<br>
 		<br>
		<input type="submit" value="Invia">
	</form>
</body>
</html>