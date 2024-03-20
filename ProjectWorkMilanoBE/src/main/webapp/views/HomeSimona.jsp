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
<title>GESTIONALE COLLOQUIO</title>
<link rel="stylesheet" type="text/css" href="HomeMenuSimona.css">
</head>
<body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
<%@ include file="sidebar.jsp" %>
<%@ include file="header.jsp" %>

<div class="openoffers">
    <h2> Hai ${fn:length(openoffers)} offerte di lavoro aperte</h2>
    (tramite un metodo in homectr verifica la data odierna e mi propone solo le offers che ad oggi sono aperte)
    <c:forEach var="offer" items="${openoffers}">
        <!-- Visualizza ogni offerta -->
        <p><b>${offer.title}, ${offer.companyClient.city}</b> - ${offer.description} - Scadenza: ${offer.endDate} - <b>Visualizza</b></p>
    </c:forEach>
    <br>
    <p><b>Vai alle offerte di lavoro</b></p>
</div>

<div class="openoffers">
    <h2> Hai ${fn:length(futureInterviews)} job interview in arrivo</h2>
    (tramite un metodo in homectr verifica la data odierna e mi propone solo le interview che devono ancora verificarsi)
    <c:forEach var="interview" items="${futureInterviews}">
        <!-- Visualizza ogni offerta -->
        <p><b>${interview.candidate.surname} ${interview.candidate.name}, ${interview.stateJobInterview.title}</b> - Quando: ${interview.date} - <b>Visualizza</b></p>
        
    </c:forEach>
    <br>
    <p><b>Vai ai colloqui</b></p>
</div>

	<div class="container">
		<div class="card">
			<div class="face face1">
				<div class="content">
					<!--1 CANDIDATE -->
					<p>Seleziona l'azione desiderata</p>
					<ul id="menu">
						<li><a href="${pageContext.request.contextPath}/candidate/preRicercaCitta">CERCA BY CITTA'</a>
						<li><a href="${pageContext.request.contextPath}/candidate/preAddCandidateForm">AGGIUNGI</a>
						<li><a href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerCompagnia">CERCA BY COMPAGNIA</a>
						<li><a href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerStateJobInterview">CERCA BY SJ-INTERVIEW</a>
						<li><a href="${pageContext.request.contextPath}/candidate/preRicercaCandidatoPerOutcome">CERCA BY OUTCOME</a>
						<li><a href="${pageContext.request.contextPath}/JobOfferCtr/preRicercaSkill">CERCA BY SKILL</a>
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
					<!--2 CANDIDATE COMMERCIAL DATA -->
					<p>Seleziona l'azione desiderata</p>
					<ul id="menu">
						<li><a
							href="${pageContext.request.contextPath}/views/preFindCCDataByIdCandidate.jsp">CERCA
								BY CANDIDATE</a>
						<li><a
							href="${pageContext.request.contextPath}/CandidateCommercialDataCtr/findByIdCandidateCommercialDataForm">CERCA
								BY ID</a>
						<li><a
							href="${pageContext.request.contextPath}/CandidateCommercialDataCtr/addCandidateCommercialDataForm">AGGIUNGI</a>
					</ul>
				</div>
			</div>
			<div class="face face2">
				<h2>CANDIDATE COMMERCIAL DATA</h2>
			</div>
		</div>
		<div class="card">
			<div class="face face1">
				<div class="content">
					<!--3 CANDIDATE SKILL-->
					<p>Seleziona l'azione desiderata</p>
					<ul id="menu">
						<li><a
							href="${pageContext.request.contextPath}/candidate/findCandidateBySkillForm">CERCA
								by skill</a></li>
					</ul>
				</div>
			</div>
			<div class="face face2">
				<h2>CANDIDATE SKILL</h2>
			</div>
		</div>
	    <div class="card">
			<div class="face face1">
				<div class="content">
					<!--4 COMPANY CLIENT -->
					<p>Seleziona l'azione desiderata</p>
					<ul id="menu">
						<li><a
							href="${pageContext.request.contextPath}/CompanyClientCtr/preAddCompanyClientForm">Add
								Company Client</a></li>
						<li><a
							href="${pageContext.request.contextPath}/CompanyClientCtr/findByIdCompanyClientForm">Find
								a Company Client by ID</a></li>
						<li><a
							href="${pageContext.request.contextPath}/CompanyClientCtr/preFindCompanyClientByNameForm">Find
								a Company Client by Name</a></li>
						<li><a
							href="${pageContext.request.contextPath}/CompanyClientCtr/preFindCompanyClientByCityForm">Find
								a Company Client by City</a></li>
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
				<!--5 CONTRACT TYPE -->
				<p>Seleziona l'azione desiderata</p>
				<ul id="menu">
					<li><a href="${pageContext.request.contextPath}/ContractTypeCtr/preAddContractTypeForm">Add</a></li>
					<li><a href="${pageContext.request.contextPath}/ContractTypeCtr/preFindByIdContractTypeForm">Find by ID</a></li>					
				</ul>
			</div>
		</div>
		<div class="face face2">
			<h2>CONTRACT TYPE</h2>
		</div>
	</div>
	<div class="card">
		<div class="face face1">
			<div class="content">
				<!--6 EDUCATION -->
				<p>Seleziona l'azione desiderata</p>
				<ul id="menu">
<li><a href="${pageContext.request.contextPath}/EducationCtr/preAddEducationForm">Add Education</a></li>
<li><a href="${pageContext.request.contextPath}/EducationCtr/preFindByIdEducationForm">Find an Education by ID</a></li>
			</ul>
			</div>
		</div>
		<div class="face face2">
			<h2>EDUCATION</h2>
		</div>
	</div>
	<div class="card">
		<div class="face face1">
			<div class="content">
				<!--7 EDUCATION DEGREE TYPE -->
				<p>Seleziona l'azione desiderata</p>
				<ul id="menu">

			</ul>
			</div>
		</div>
		<div class="face face2">
			<h2>EDUCATION DEGREE TYPE</h2>
		</div>
	</div>
	<div class="card">
		<div class="face face1">
			<div class="content">
				<!--8 EMPLOYEE -->
				<p>Seleziona l'azione desiderata</p>
				<ul id="menu">

			</ul>
			</div>
		</div>
		<div class="face face2">
			<h2>EMPLOYEE</h2>
		</div>
	</div>
	<div class="card">
		<div class="face face1">
			<div class="content">
				<!--9 EMPLOYEE TYPE -->
				<p>Seleziona l'azione desiderata</p>
				<ul id="menu">

			</ul>
			</div>
		</div>
		<div class="face face2">
			<h2>EMPLOYEE TYPE</h2>
		</div>
	</div>
	<div class="card">
		<div class="face face1">
			<div class="content">
				<!--10 JOB INTERVIEW -->
				<p>Seleziona l'azione desiderata</p>
				<ul id="menu">

			</ul>
			</div>
		</div>
		<div class="face face2">
			<h2>JOB INTERVIEW</h2>
		</div>
	</div>
	<div class="card">
		<div class="face face1">
			<div class="content">
				<!--10 JOB OFFER -->
				<p>Seleziona l'azione desiderata</p>
				<ul id="menu">

			</ul>
			</div>
		</div>
		<div class="face face2">
			<h2>JOB OFFER</h2>
		</div>
	</div>
	<div class="card">
		<div class="face face1">
			<div class="content">
				<!--12 JOB OFFER SKILL -->
				<p>Seleziona l'azione desiderata</p>
				<ul id="menu">

			</ul>
			</div>
		</div>
		<div class="face face2">
			<h2>JOB OFFER SKILL</h2>
		</div>
	</div>
	<div class="card">
		<div class="face face1">
			<div class="content">
				<!--13 SKILL -->
				<p>Seleziona l'azione desiderata</p>
				<ul id="menu">

			</ul>
			</div>
		</div>
		<div class="face face2">
			<h2>SKILL</h2>
		</div>
	</div>
	<div class="card">
		<div class="face face1">
			<div class="content">
				<!--14 STATE JOB INTERVIEW -->
				<p>Seleziona l'azione desiderata</p>
				<ul id="menu">

			</ul>
			</div>
		</div>
		<div class="face face2">
			<h2>STATE JOB INTERVIEW</h2>
		</div>
	</div>
	<div class="card">
		<div class="face face1">
			<div class="content">
				<!--15 WORK EXPERIENCE -->
				<p>Seleziona l'azione desiderata</p>
				<ul id="menu">

			</ul>
			</div>
		</div>
		<div class="face face2">
			<h2>WORK EXPERIENCE</h2>
		</div>
	</div>
</div>

</body>
</html>


