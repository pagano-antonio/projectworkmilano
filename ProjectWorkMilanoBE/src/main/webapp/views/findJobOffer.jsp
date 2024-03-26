<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>find job offer</title>
    <style>
body {
        font-family: Century Gothic;
        display: flex;
        justify-content: center;      
        align-items: center;
        height: 100vh;
        background: linear-gradient(45deg, #3503ad, #f7308c);
    border-radius: 15px;
    padding: 10px;
    margin: 10px;
    }

    .container {
font-family: Century Gothic;
        justify-content: center;      
        align-items: center;
        background: white;
        padding: 10px;
    margin: 10px;
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
 H2 {
  position: absolute; 
  top: 20%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-family: Century Gothic;
  border-radius: 10px;
  z-index: 9999; 
}
label {
    font-weight: bold; /* Rende il testo in grassetto */
    color: #333; /* Colore del testo */
    margin-right: 10px; /* Spazio a destra del label */
  }

  /* Stile per l'input text */
  input[type="text"] {
    padding: 5px; /* Spazio interno dell'input */
    border: 1px solid #ccc; /* Bordo grigio */
    border-radius: 3px; /* Bordi arrotondati */
    font-size: 14px; /* Dimensione del testo */
  }
input[type="number"] {
    padding: 5px; /* Spazio interno dell'input */
    border: 1px solid #ccc; /* Bordo grigio */
    border-radius: 3px; /* Bordi arrotondati */
    font-size: 14px; /* Dimensione del testo */
  }
  /* Stile per il break */
  br {
    margin-bottom: 10px; /* Spazio sotto il break */
  }
</style>
</head>
<body>
<div class="container">

            <h3>SEARCH JOB OFFER BY ID</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preInsertIdJobOffer" style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
            <hr style="border-color: #000000">

            <h3>SEARCH JOB OFFER BY TITLE</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preInsertTitle" style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
            <hr style="border-color: #000000">

            <h3>SEARCH JOB OFFER BY START DATE AND END DATE</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preInsertStartDateAndEndDate" style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
            <hr style="border-color: #000000">

            <h3>SEARCH JOB OFFER BY ID COMPANY CLIENT</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preInsertIdCompanyClient" style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
            <hr style="border-color: #000000">

            <h3>SEARCH JOB OFFER BY MIN_RAL AND MAX_RAL</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/findJobOfferBetweenMinRalAndMaxRalForm" style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
            <hr style="border-color: #000000">

            <h3>SEARCH JOB OFFER BY ID CONTRACT TYPE</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/findJobOfferByIdContractTypeForm" style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
            <hr style="border-color: #000000">
  
            <h3>SEARCH JOB OFFER BY SKILL</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preRicercaSkill" style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
            <hr style="border-color: #000000">

  </div>  
</body>
</html>