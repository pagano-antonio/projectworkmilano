<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.Candidate"%>
<%@ page import="com.ctr.CandidateCtr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD CANDIDATE</title>
</head>
<body>

    <form action="${pageContext.request.contextPath}/candidate/addCandidate" method="post">
    
        <h2>Add Candidate:</h2>             
        
        <label for="name">Name:</label>
        <input type="text" id="name" name="name"> <br>
        
        <label for="surname">Surname:</label>
        <input type="text" id="surname" name="surname"> <br>
        
        <label for="birthday">Birthday:</label>
        <input type="date" id="birthday" name="birthday"> <br>
        
        <label for="birthPlace">Birth Place:</label>
        <input type="text" id="birthPlace" name="birthPlace"> <br>
        
        <label for="address">Address:</label>
        <input type="text" id="address" name="address"> <br>
        
        <label for="city">City:</label>
        <input type="text" id="city" name="city"> <br>
        
        <label for="email">Email:</label>
        <input type="text" id="email" name="email"> <br>
        
        <label for="phone">Phone:</label>
        <input type="number" id="phone" name="phone"> <br>
        
        <hr> 
    
        <button type="submit">ADD</button>
    
    </form>
</body>
</html>
