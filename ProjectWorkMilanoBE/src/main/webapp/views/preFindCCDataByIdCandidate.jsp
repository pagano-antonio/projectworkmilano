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
        margin: 10px;
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
</style>
</head>
<body>
  <div class="container">
<h1>SEARCH CANDIDATE COMMERCIAL DATA BY ID CANDIDATE</h1>  
  
<form action="${pageContext.request.contextPath}/CandidateCommercialDataCtr/findCCDataByIdCandidate" method="post">

        <label for="idCandidate"><strong>ID Candidate:</strong></label>
        <input type="text" id="idCandidate" name="idCandidate">
        <button type="submit">Search</button>
    </form>
    </div>
</body>
</html>