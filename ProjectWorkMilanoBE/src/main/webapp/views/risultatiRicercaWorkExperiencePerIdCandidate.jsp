<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.WorkExperience"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Work Experience</title>
</head>
<body>

<table>
    <thead>
        <tr>
            <th>Id Work Experience</th>
            <th>Id Candidate</th>
            <th>Title</th>
            <th>Description</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Company</th>
            <th>City</th>
            <th>Actions</th> 
        </tr>
    </thead>
    <tbody>
        <c:forEach var="workExperience" items="${workExperienceList}">
            <tr>
                <td>${workExperience.idWorkExperience}</td>
                <td>${workExperience.candidate.idCandidate}</td>
                <td>${workExperience.title}</td>
                <td>${workExperience.description}</td>
                <td>${workExperience.startDate}</td>
                <td>${workExperience.endDate}</td>
                <td>${workExperience.company}</td>
                <td>${workExperience.city}</td>
                <td>
                    <form action="${pageContext.request.contextPath}/wk/updateCandidateForm" method="Get">
                        <input type="hidden" name="idWorkExperience" value="${workExperience.idWorkExperience}">
                        <button type="submit">Aggiorna</button>
                    </form>
                    <form action="${pageContext.request.contextPath}/wk/delete" method="Get">
                        <input type="hidden" name="idWorkExperience" value="${workExperience.idWorkExperience}">
                        <button type="submit">Elimina</button>
                    </form>
                    <a href="${pageContext.request.contextPath}/home">Go back Home</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
