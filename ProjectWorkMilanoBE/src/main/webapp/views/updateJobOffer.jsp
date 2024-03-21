<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.JobOffer"%>
<%@ page import="com.ctr.JobOfferCtr"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Job Offer</title>
</head>
<body>
<% JobOffer jobOffer = (JobOffer) request.getAttribute("jobOffer"); %>
<form action="${pageContext.request.contextPath}/JobOfferCtr/updateJobOffer" method="post">
    
    <h2>Update Job Offer:</h2>
    
    <label for="idJobOffer">Id JobOffer:</label>
         <input readonly type="number" id="idJobOffer" name="idJobOffer" value="<%= jobOffer.getIdJobOffer() %>">
    
    
    <label for="title">Title:</label>
    <input type="text" id="title" name="title" value="<%= jobOffer.getTitle() %>"> <br>
    
    <label for="description">Description:</label>
    <input type="text" id="description" name="description" value="<%= jobOffer.getDescription() %>"> <br>
    
    <label for="startDate">Start Date:</label>
    <input type="date" id="startDate" name="startDate" value="<%= jobOffer.getStartDate() %>"> <br>
    
    <label for="endDate">End Date:</label>
    <input type="date" id="endDate" name="endDate" value="<%= jobOffer.getEndDate() %>"> <br>
    
    <label for="idCompanyClient">ID Company Client:</label>
    <input readonly type="number" name="companyClient.idCompanyClient" value="<%= jobOffer.getCompanyClient().getIdCompanyClient() %>">
    
    <label for="minRal">Min Ral:</label>
    <input type="text" id="minRal" name="minRal" value="<%= jobOffer.getMinRal() %>"> <br>
    
    <label for="maxRal">Max Ral:</label>
    <input type="text" id="maxRal" name="maxRal" value="<%= jobOffer.getMaxRal() %>"> <br>
    
    <label for="idContractType">ID Contract Type:</label>
   <input  readonly type="number" name="contractTipe.idContractType" value="<%= jobOffer.getContractType().getIdContractType() %>">
    
    <hr> 

    <button type="submit">Update</button>

</form>
</body>
</html>
