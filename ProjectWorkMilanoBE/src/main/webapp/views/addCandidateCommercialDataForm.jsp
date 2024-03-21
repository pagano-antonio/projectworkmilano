<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD CANDIDATE COMMERCIAL DATA</title>
<style>
    * {
    font-family:Century Gothic;
    align-items: center;
    justify-content: center;
    padding: 10px;
    margin: 10px;
}
body {
        display: flex;
        justify-content: center;      
        align-items: center;
        height: 100vh;
        margin: 0;
        background: linear-gradient(45deg, #3503ad, #f7308c);
    border-radius: 15px;
    }

    .container {
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
   H1 {
  position: absolute;
  top: 15%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  background: white;
  border-radius: 10px;
  z-index: 9999; 
}
</style>
</head>
<body>

    <div class="container">
        <h1>ADD CANDIDATE COMMERCIAL DATA</h1>
        
        <form:form action="${pageContext.request.contextPath}/CandidateCommercialDataCtr/addCandidateCommercialData"
            method="post" modelAttribute="candidateCommercialData">
            
            <label for="candidate"><strong>Seleziona un candidato:</strong></label>
            <select id="candidate" name="candidate">
                <c:forEach items="${candidates}" var="candidate">
                    <option value="${candidate.idCandidate}">
                        ${candidate.name} ${candidate.surname}
                    </option>
                </c:forEach>
            </select>
            <br>
            <label for="currentRal"><strong>Select Current Ral:</strong></label>
            <input type="text" name="currentRal" placeholder="currentRal" required><br>
            <label for="proposedRal"><strong>Select Proposed Ral:</strong></label>
            <input type="text" name="proposedRal" placeholder="proposedRal" required><br>
            <label for="monthRefund"><strong>Select Month Refund:</strong></label>
            <input type="text" name="monthRefund" placeholder="monthRefund" required><br>
            <label for="businessCost"><strong>Select Business Cost:</strong></label>
            <input type="text" name="businessCost" placeholder="businessCost" required><br>
            <label for="subsidyFlag"><strong>Select Subsidy Flag:</strong></label>
            <input type="text" name="subsidyFlag" placeholder="subsidyFlag" required><br>
            <label for="notes"><strong>Add notes:</strong></label>
            <input type="text" name="notes" placeholder="notes" required><br>
            
            <label for="submit"><strong>If you have added all the information correctly, click here:</strong></label>
            <input type="submit" value="Add">
        </form:form>
    </div>

</body>
</html>
