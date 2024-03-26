<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.Skill"%>
<%@ page import="com.ctr.SkillCtr"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Skill</title>
</head>
<body>
<% Skill sList = (Skill) request.getAttribute("sList"); %>
<form action="${pageContext.request.contextPath}/skill/updateSkill" method="post">
    
    <h2>Update Skill:</h2>
    
    <label for="idSkill">Id Skill:</label>
         <input readonly type="number" id="idSkill" name="idSkill" value="<%= sList.getIdSkill() %>">
    
    
    <label for="title">Title:</label>
    <input type="text" id="title" name="title" value="<%= sList.getTitle() %>"> <br>
    
    <label for="description">Description:</label>
    <input type="text" id="description" name="description" value="<%= sList.getDescription() %>"> <br>
        
    <hr> 

    <button type="submit">Update</button>

</form>
</body>
</html>
