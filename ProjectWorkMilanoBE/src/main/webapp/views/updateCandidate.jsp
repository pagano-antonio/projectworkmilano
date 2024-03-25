<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.model.Candidate"%>
    <%@ page import="com.ctr.CandidateCtr"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Candidate</title>
    <style>
    * {
    font-family:Century Gothic;
    align-items: center;
    justify-content: center;
    padding: 8px;
    margin: 8px;
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

        justify-content: center;      
        align-items: center;
        background: white;
        padding: 1px;
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
button[type="submit"] {
        margin-top: 20px; /* Adjust as needed */
        margin-left:100px;
        width: 150px; /* Adjust as needed */
    }


</style>
</head>
<body>
<div class="container">
<% Candidate candidate = (Candidate) request.getAttribute("candidate"); %>
    <form action="${pageContext.request.contextPath}/candidate/updateCandidate1" method="post">
    
        <h1>Update Candidate:</h1>
        
        <label for="idCandidate"><strong>Id Candidate:</strong></label>
         <input readonly type="number" id="idCandidate" name="idCandidate" value="<%= candidate.getIdCandidate() %>"> <br>
         
        <label for="name"><strong>Name:</strong></label>
        <input type="text" id="name" name="name" value="<%= candidate.getName() %>"> <br>
        
        <label for="surname"><strong>Surname:</strong></label>
        <input type="text" id="surname" name="surname" value="<%= candidate.getSurname() %>"> <br>
        
        <label for="birthday"><strong>Birthday:</strong></label>
        <input type="date" id="birthday" name="birthday" value="<%= candidate.getBirthday() %>"> <br>
        
        <label for="birthPlace"><strong>Birth Place:</strong></label>
        <input type="text" id="birthPlace" name="birthPlace" value="<%= candidate.getBirthPlace() %>"> <br>
        
        <label for="address"><strong>Address:</strong></label>
        <input type="text" id="address" name="address" value="<%= candidate.getAddress() %>"> <br>
        
        <label for="city"><strong>City:</strong></label>
        <input type="text" id="city" name="city" value="<%= candidate.getCity() %>"> <br>
        
        <label for="email"><strong>Email:</strong></label>
        <input type="text" id="email" name="email" value="<%= candidate.getEmail() %>"> <br>
        
        <label for="phone"><strong>Phone:</strong></label>
        <input type="number" id="phone" name="phone" value="<%= candidate.getPhone() %>"> <br>
 
        <button type="submit"><strong>UPDATE</strong></button>
    
    </form>
    </div>
</body>
</html>
