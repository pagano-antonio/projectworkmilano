<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>preFindJobInterviewbyidCandidate</title>
<style>
    * {
    font-family:Century Gothic;
    align-items: center;
    justify-content: center;
    padding: 1px;
    margin: 1px;
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
        display: flex;
        justify-content: center;      
        align-items: center;
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
  position: absolute; 
  top: 30%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  border-radius: 10px;
  z-index: 9999; 
}
a {
    color:black;
    position: absolute;
    top: 80%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  background: white;
  border-radius: 10px;
  padding: 15px;
}
a:hover {
  color: white;
  background-color: black; /* colore del testo al passaggio del mouse */
  border-radius: 10px;
}
</style>
</head>
<body>
<div class="container">
<h1>FIND JOB INTERVIEW</h1> 
	<h2>Find JOB Interview by ID Candidate:</h2>

<form action="${pageContext.request.contextPath}/JobInterviewCtr/findJobInterviewByIdCandidate" method="POST">

        <label for="idCandidate"><strong>ID Candidate:</strong></label>
        <input type="text" id="idCandidate" name="idCandidate">
        <button type="submit">Search</button>
    </form>
    </div>
</body>
</html>