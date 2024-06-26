<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Candidate Hub</title>
<%@ include file="header.jsp"%>
<meta charset="UTF-8">
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
    margin-top: 80px;
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
    top: 8%;
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

<h1>CANDIDATE:select search method</h1> 


<div class="main-container"> 
<div class="container">   
  <h3>SEARCH CANDIDATE BY ID</h3>
 <a class="custom-link" href="${pageContext.request.contextPath}/candidate/findByIdCandidateForm"style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
   <hr style="border-color: #000000">         
 </div> 
      <div class="container">   
  <h3>SEARCH CANDIDATE BY CITY</h3>
 <a class="custom-link" href="${pageContext.request.contextPath}/candidate/preRicercaCitta"style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
   <hr style="border-color: #000000">         
 </div>           
     <div class="container">   
  <h3>SEARCH CANDIDATE BY COMPANY</h3>
 <a class="custom-link" href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerCompagnia"style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
   <hr style="border-color: #000000">         
 </div> 
  <div class="container">   
  <h3>SEARCH CANDIDATE BY STATE JOB INTERVIEW</h3>
 <a class="custom-link" href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerStateJobInterview"style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
   <hr style="border-color: #000000">         
 </div> 
 <div class="container">   
  <h3>SEARCH CANDIDATE BY STATE OUTCOME</h3>
 <a class="custom-link" href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerOutcome"style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
   <hr style="border-color: #000000">         
 </div>
  <div class="container"> 
  <h3>SEARCH CANDIDATE BY SURNAME</h3>
 <a class="custom-link" href="${pageContext.request.contextPath}/candidate/preFindCandidateBySurnameForm"style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
   <hr style="border-color: #000000">         
 </div> 
  <div class="container">
 <h3>SEARCH CANDIDATE BY PHONE</h3>
 <a class="custom-link" href="${pageContext.request.contextPath}/candidate/preFindCandidateByPhoneForm"style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
   <hr style="border-color: #000000">         
 </div> 
 <div class="container">
 <h3>SEARCH CANDIDATE BY SKILL</h3>
 <a class="custom-link" href="${pageContext.request.contextPath}/candidate/findCandidateBySkillForm"style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
   <hr style="border-color: #000000">         
 </div> 
  <div class="container">
 <h3>SEARCH CANDIDATE BY EDUCATION DEGREE TYPE</h3>
 <a class="custom-link" href="${pageContext.request.contextPath}/candidate/preFindCandidateByEDTForm"style="text-decoration: none; color: inherit"><button>GO TO FORM</button></a>
   <hr style="border-color: #000000">         
 </div>   
</div>  
</body>
</html>