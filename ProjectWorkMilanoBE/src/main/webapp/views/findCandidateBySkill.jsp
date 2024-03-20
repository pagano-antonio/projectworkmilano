<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Risultato</title>
</head>
<body>
	<h1>RISULTATO RICERCA CANDIDATE BY SKILL</h1>
	
	<table class="table table-sm">
		<tr class="table-success">
			<th scope="col">IdCandidate</th>
			<th scope="col">Name</th>
			<th scope="col">Surname</th>
			<th scope="col">Birthday</th>
			<th scope="col">Birth Place</th>
			<th scope="col">Address</th>	
			<th scope="col">City</th>
			<th scope="col">Email</th>
			<th scope="col">Phone</th>	
			<th scope="col">Update</th>	
			<th scope="col">Delete</th>				
		</tr>

		<c:forEach var="c" items="${candidatesBySkill}">			
			
				<tr>
					<td class="table-success">${c.idCandidate}</td>					
					<td class="table-success">${c.name}</td>			
					<td class="table-success">${c.surname}</td>										
					<td class="table-success">${c.birthday}</td>
					<td class="table-success">${c.birthPlace}</td>
					<td class="table-success">${c.address}</td>
					<td class="table-success">${c.city}</td>
					<td class="table-success">${c.email}</td>
					<td class="table-success">${c.phone}</td>
					<td class="table-success"><a href="${pageContext.request.contextPath}/candidate/updateCandidateForm?idCandidate=${c.idCandidate}"><button>Update</button></a></td>
					<td class="table-success"><a href="${pageContext.request.contextPath}/candidate/delete?idCandidate=${c.idCandidate}"><button>Delete</button></a></td>
				</tr>					
		</c:forEach>				
	</table>
	
	<br>
	<a href="${pageContext.request.contextPath}/views/homeCristiana.jsp">Home</a>	
</body>
</html>