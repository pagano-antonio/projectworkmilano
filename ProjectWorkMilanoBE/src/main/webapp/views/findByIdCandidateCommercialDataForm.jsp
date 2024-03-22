<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>preFindByIdCandidate</title>
<style>
    * {
    font-family:Century Gothic;
    align-items: center;
    justify-content: center;
    padding: 10px;
    margin: 10px;
}
body {
        display: flex;
        justify-content: center;      
        align-items: center;
        height: 100vh;
        margin: 0;
        background: linear-gradient(45deg, #3503ad, #f7308c);
    border-radius: 15px;
    }

    .container {
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
  H1 {
  position: absolute;
  top: 15%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  background: white;
  border-radius: 10px;
  z-index: 9999; 
}
 H2 {
  position: relative; 
  top: 15%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  background: white;
  border-radius: 10px;
  z-index: 9999; 
}
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  border: 1px solid black;
  padding: 8px;
  text-align: left;
}
th {
  background-color: #f2f2f2;
}

a {
  color: black; /* colore del testo */
  text-decoration: underline; /* rimuove il sottolineato di default */
  transition: color 0.3s ease;
  border-radius: 10px; /* animazione del cambio di colore */
}

a:hover {
  color: white;
  background-color: #f7308c; /* colore del testo al passaggio del mouse */
  border-radius: 10px;
}
</style>
</head>
<body>
 <div class="container">
<h1>FIND CANDIDATE COMMERCIAL DATA BY CANDIDATE</h1>
<form action="${pageContext.request.contextPath}/CandidateCommercialDataCtr/findByIdCandidateCommercialData" method="post">

        <label for="idCandidateCommercial"><strong>ID Candidate Commercial:</strong></label>
        <input type="text" id="idCandidateCommercial" name="idCandidateCommercial">
        <button type="submit">Search</button>
    </form>
    </div>
</body>
</html>