<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>JAVA INTERVIEWS</title>
<link rel="stylesheet" type="text/css" href="/CSS/HomeMenuSimona.css">
</head>
<body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
<%@ include file="header.jsp" %>
      <!-- Inserisci il tuo logo qui -->
        <img src="images/LOGO-PROJECT-WORK-JAVA-GIRLS.png" alt="Logo JAVA GIRLS" class="logo">

<div class="container-wrapper">
	<div class="container">
		<div class="card">
			<div class="face face1">
				<div class="content">
					<!--1 CANDIDATE -->
					<p>Select the desired action</p>
					<ul id="menu">
						<li><a href="${pageContext.request.contextPath}/candidate/find">FIND</a>
						<li><a href="${pageContext.request.contextPath}/candidate/preAddCandidateForm">ADD</a>
					</ul>
				</div>
			</div>
			<div class="face face2">
				<h2>CANDIDATE</h2>
			</div>
		</div>
		
	    <div class="card">
			<div class="face face1">
				<div class="content">
					<!--4 COMPANY CLIENT -->
					<p>Select the desired action</p>
					<ul id="menu">
						<li><a href="${pageContext.request.contextPath}/CompanyClientCtr/companyClientFind">FIND </a></li>						
					<li><a href="${pageContext.request.contextPath}/CompanyClientCtr/preAddCompanyClientForm">ADD</a></li>
					</ul>
				</div>
			</div>		
	<div class="face face2">
		<h2>COMPANY CLIENT</h2>
	</div>
</div>
	<div class="card">
		<div class="face face1">
			<div class="content">
				<!--10 JOB OFFER -->
				<p>Select the desired action</p>
				<ul id="menu">
				<li><a href="${pageContext.request.contextPath}/JobOfferCtr/findJobOffer">FIND</a>
						<li><a href="${pageContext.request.contextPath}/JobOfferCtr/addJobOfferForm">ADD</a>

			</ul>
			</div>
		</div>
		<div class="face face2">
			<h2>JOB OFFER</h2>
		</div>
	</div>
</div>
<div class="openoffers-container">
    <div class="openoffers">
        <h2> Hai ${fn:length(openoffers)} offerte di lavoro aperte</h2>
        <c:forEach var="offer" items="${openoffers}">
        <!-- Visualizza ogni offerta -->
        <p><b>${offer.title}, ${offer.companyClient.city}</b> - ${offer.description} - Scadenza: ${offer.endDate} - <b>Visualizza</b></p>
    </c:forEach>
    <br>
    <p><b>GO TO JOB OFFER</b></p>
    </div>

    <div class="openoffers">
        <h2> Hai ${fn:length(futureInterviews)} job interview in arrivo</h2>
         <c:forEach var="interview" items="${futureInterviews}">
        <!-- Visualizza ogni offerta -->
        <p><b>${interview.candidate.surname} ${interview.candidate.name}, ${interview.stateJobInterview.title}</b> - Quando: ${interview.date} - <b>Visualizza</b></p>
        
    </c:forEach>
    <br>
    <p><b>GO TO INTERVIEWS</b></p>
    </div>
</div>
</div>
</body>
</html>


