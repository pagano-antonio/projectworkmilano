<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.model.Candidate"%>
    <%@ page import="com.ctr.CandidateCtr"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Candidate</title>
</head>
<body>
<% Candidate candidate = (Candidate) request.getAttribute("candidate"); %>
    <form action="${pageContext.request.contextPath}/candidate/updateCandidate" method="POST">
    
        <h2>Update Candidate:</h2>
        
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%= candidate.getName() %>"> <br>
        
        <label for="surname">Surname:</label>
        <input type="text" id="surname" name="surname" value="<%= candidate.getSurname() %>"> <br>
        
        <label for="birthday">Birthday:</label>
        <input type="date" id="birthday" name="birthday" value="<%= candidate.getBirthday() %>"> <br>
        
        <label for="birthPlace">Birth Place:</label>
        <input type="text" id="birthPlace" name="birthPlace" value="<%= candidate.getBirthPlace() %>"> <br>
        
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" value="<%= candidate.getAddress() %>"> <br>
        
        <label for="city">City:</label>
        <input type="text" id="city" name="city" value="<%= candidate.getCity() %>"> <br>
        
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" value="<%= candidate.getEmail() %>"> <br>
        
        <label for="phone">Phone:</label>
        <input type="number" id="phone" name="phone" value="<%= candidate.getPhone() %>"> <br>
        
        <hr> 
    
        <button type="submit">Aggiorna</button>
    
    </form>
</body>
</html>
