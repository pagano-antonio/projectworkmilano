<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>preFindByIdCandidate</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/CandidateCommercialDataCtr/findByIdCandidateCommercialData" method="post">

        <label for="idCandidateCommercial">ID CandidateCommercial:</label>
        <input type="text" id="idCandidateCommercial" name="idCandidateCommercial">
        <button type="submit">Cerca</button>
    </form>
</body>
</html>