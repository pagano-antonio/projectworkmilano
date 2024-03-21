<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>

<!-- http://localhost:8080/views/homeFrancesca.jsp -->

<h3>Candidate</h3>
<ul>
<li><a href="${pageContext.request.contextPath}/candidate/preFindCandidateBySurnameForm">Find a Candidate by surname</a></li>
<li><a href="${pageContext.request.contextPath}/candidate/preFindCandidateByPhoneForm">Find a Candidate by phone</a></li>
<li><a href="${pageContext.request.contextPath}/candidate/preFindCandidateByEDTForm">Find a Candidate by Education Degree Type</a></li>
</ul>

<h3>Company Client</h3>
<ul>
<li><a href="${pageContext.request.contextPath}/CompanyClientCtr/preAddCompanyClientForm">Add Company Client</a></li>
<li><a href="${pageContext.request.contextPath}/CompanyClientCtr/findByIdCompanyClientForm">Find a Company Client by ID</a></li>
<li><a href="${pageContext.request.contextPath}/CompanyClientCtr/preFindCompanyClientByNameForm">Find a Company Client by Name</a></li>
<li><a href="${pageContext.request.contextPath}/CompanyClientCtr/preFindCompanyClientByCityForm">Find a Company Client bycon City</a></li>
<li>Update Company Client: to watch it work go to "Find a Company Client by ID/Name/City"</li>
<li>Delete Company Client: same.</li>
</ul>

<h3>Contract Type</h3>
<ul>
<li><a href="${pageContext.request.contextPath}/ContractTypeCtr/preAddContractTypeForm">Add Contract Type</a></li>
<li><a href="${pageContext.request.contextPath}/ContractTypeCtr/preFindByIdContractTypeForm">Find a Contract Type by ID</a></li>
<li>Update Contract Type: go to "Find Contract Type by ID"</li>
<li>Delete Contract Type: same.</li>
</ul>

<h3>Education</h3>
<ul>
<li><a href="${pageContext.request.contextPath}/EducationCtr/preAddEducationForm">Add Education</a></li>
<li><a href="${pageContext.request.contextPath}/EducationCtr/preFindByIdEducationForm">Find an Education by ID</a></li>
<li>Update Education: go to "Find Education by ID"</li>
<li>Delete Education: same.</li>
</ul>
</body>
</html>