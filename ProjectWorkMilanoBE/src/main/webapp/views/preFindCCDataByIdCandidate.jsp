<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>preFindByIdCandidate</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/CandidateCommercialDataCtr/findCCDataByIdCandidate" method="post">

        <label for="idCandidate">ID Candidato:</label>
        <input type="text" id="idCandidate" name="idCandidate">
        <button type="submit">Cerca</button>
    </form>
</body>
</html>