<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Skill"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Risultati Ricerca Skill Per Candidate':</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>Id Skill</th>
                <th>Title</th>
                <th>Descripton</th>
              
            </tr>
        </thead>
        <tbody>
            <c:forEach var="sList" items="${sList}">
                <tr>
                    <td>${sList.idSkill}</td>
                    <td>${sList.title}</td>
                    <td>${sList.description}</td>
                  
                    <td>
                    
                    
  <!-- TASTI PER INFO SU CANDIDATE -->
   
          
              <form action="${pageContext.request.contextPath}/skill/preEliminaSkill" method="Get">
    		<input type="hidden" name="idSkill" value="${sList.idSkill}">
    <button type="submit">Aggiorna</button>
			</form>
                        
      <form action="${pageContext.request.contextPath}/skill/preAggiornaSkill" method="Get">
     <input type="hidden" name="idSkill" value="${sLista.idSkill}">
  <button type="submit">Elimina</button>
  </form>
   
                        <a href="${pageContext.request.contextPath}/home">Go back Home</a>
                    </td>
                </tr>
            </c:forEach>
         </thead>
        <tbody>
</body>
</html>
