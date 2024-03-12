<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>

<!-- http://localhost:8080/views/homeFrancesca.jsp -->

<h3>Company Client</h3>
<ul>
<li><a href="${pageContext.request.contextPath}/CompanyClientCtr/preAddCompanyClientForm">Add Company Client</a></li>
<li><a href="${pageContext.request.contextPath}/CompanyClientCtr/findByIdCompanyClientForm">Find a Company Client by ID</a></li>
<li><a href="${pageContext.request.contextPath}/CompanyClientCtr/preFindCompanyClientByNameForm">Find a Company Client by Name</a></li>
<li><a href="${pageContext.request.contextPath}/CompanyClientCtr/preFindCompanyClientByCityForm">Find a Company Client by City</a></li>
<li>Update Company Client: to watch it work go to "Find a Company Client by ID/Name/City"</li>
<li>Delete Company Client: same.</li>
</ul>
</body>
</html>