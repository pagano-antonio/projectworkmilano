<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>preFindByIdCandidate</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/findByIdCandidate" method="post">

<input id="txt-input" type="text" name="idCandidate" value="idCandidate">   

<input type="submit" value="Cerca">

</form>
</body>
</html>