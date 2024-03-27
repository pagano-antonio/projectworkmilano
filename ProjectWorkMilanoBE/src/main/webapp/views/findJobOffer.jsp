<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Job Offer Hub</title>
    <%@ include file="header.jsp"%>
    <style>
  body {
    font-family: Century Gothic;
    display: flex;
    justify-content: center;      
    align-items: center;
    height: 100vh;
    background: linear-gradient(45deg, #3503ad, #f7308c);
  }
  
  .main-container {
    width: 90%; /* Utilizza il 90% della larghezza dello schermo */
    max-width: 1200px; /* Larghezza massima del contenitore */
    margin-top: 0 auto;
    text-align: center; /* Centra il contenitore orizzontalmente */
  }

  .container {
    font-family: Century Gothic;
    background: white;
    padding: 5px;
    margin: 5px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    text-align: center; /* Centra il testo all'interno del container */
  }

  H1 {
    position: absolute;
    top: 15%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-family: Century Gothic;
    background: white;
    border-radius: 10px;
  }
 H2 {
    position: absolute;
    top: 25%;
    left: 50%;
   
  H3 {
    text-align: center; /* Centra il testo all'interno dell'elemento H3 */
   }
  
  a, button {
    text-align: center; /* Centra il testo all'interno di link e pulsanti */
    text-decoration: none;
    color: black;
    font-weight: bold;
  }

  .custom-link:hover {
    color: #9370DB;
  }

  /* Media query per schermi di dimensioni fino a 768px */
  @media only screen and (max-width: 768px) {
    .container {
      min-width: 150px; /* Riduci la larghezza minima per adattarsi ai dispositivi più piccoli */
    }
  }
</style>
</head>
<body>
<h1>JOB OFFER:select search method</h1> 
<div class="main-container">
<div class="container">
            <h3>SEARCH JOB OFFER BY ID</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preInsertIdJobOffer" style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
            <hr style="border-color: #000000">
            </div>
<div class="container">
            <h3>SEARCH JOB OFFER BY TITLE</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preInsertTitle" style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
            <hr style="border-color: #000000">
            </div>
<div class="container">
            <h3>SEARCH JOB OFFER BY START DATE AND END DATE</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preInsertStartDateAndEndDate" style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
            <hr style="border-color: #000000">
            </div>
<div class="container">
            <h3>SEARCH JOB OFFER BY ID COMPANY CLIENT</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preInsertIdCompanyClient" style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
            <hr style="border-color: #000000">
            </div>
<div class="container">
            <h3>SEARCH JOB OFFER BY MIN_RAL AND MAX_RAL</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/findJobOfferBetweenMinRalAndMaxRalForm" style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
            <hr style="border-color: #000000">
            </div>
<div class="container">
            <h3>SEARCH JOB OFFER BY ID CONTRACT TYPE</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/findJobOfferByIdContractTypeForm" style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
            <hr style="border-color: #000000">
            </div>
  <div class="container">
            <h3>SEARCH JOB OFFER BY SKILL</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preRicercaSkill" style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
            <hr style="border-color: #000000">
</div>
  </div>  
</body>
</html>
