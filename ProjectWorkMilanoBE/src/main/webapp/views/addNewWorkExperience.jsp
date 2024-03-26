<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD WORK EXPERIENCE</title>
</head>
<body>

    <form action="${pageContext.request.contextPath}/wk/addNewWorkExperienceSuccess" method="post">
    
        <h2>Add Work Experience:</h2>             
        
        <label for="candidate"><strong>Seleziona un candidato:</strong></label>
           <select id="candidate" name="candidate">
               <c:forEach items="${candidates}" var="candidate">
                   <option value="${candidate.idCandidate}">
                       ${candidate.name} ${candidate.surname}
                   </option>
               </c:forEach>
           </select><br>    
        <label for="title">Title:</label>
        <input type="text" id="title" name="title"> <br>  
              
        <label for="description">Description:</label>
        <input type="text" id="description" name="description"> <br>
        
        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate" name="startDate"> <br>
        
        <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate"> <br>
        
        <label for="company">Company:</label>
        <input type="text" id="company" name="company"> <br>
        
        <label for="city">City:</label>
        <input type="text" id="city" name="city"> <br>    
           
       
        <hr> 
    
        <button type="submit">ADD</button>
    
    </form>
</body>
</html>
