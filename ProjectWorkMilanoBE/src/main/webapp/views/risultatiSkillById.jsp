<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Skill"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Skill By ID :</title>
<style>
 
</style>
</head>
<body>
<div class="container">
    <h1>SKILL</h1>
    <h2>RICERCA SKILL PER ID </h2>

    <table>
        <thead>
            <tr>
                <th>Id Skill</th>
                <th>Title</th>
                <th>Description</th>
             
            </tr>
        </thead>
        <tbody>
        
        <%Skill sList = (Skill) request.getAttribute("sList");%>
		<tr>
		
			<td><%=sList.getIdSkill()%></td>
			<td><%=sList.getTitle()%></td>
			<td><%=sList.getDescription()%></td>

                        <form action="${pageContext.request.contextPath}/skill/preEliminaSkill" method="Get">
                            <input type="hidden" name="idSkill" value="${sList.idSkill}">
                            <button type="submit">UPDATE</button>
                        </form>                       
                        <form action="${pageContext.request.contextPath}/skill/preAggiornaSkill" method="Get">
                            <input type="hidden" name="idSkill" value="${sList.idSkill}">
                            <button type="submit">DELETE</button>
                        </form>
                    </td>
                </tr>
 
        </tbody>
    </table>    
    <a href="${pageContext.request.contextPath}/home"><strong>GO HOME</strong></a>
</div>
</body>
</html>
