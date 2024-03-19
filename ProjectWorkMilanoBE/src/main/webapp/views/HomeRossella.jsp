<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
<head>
<title>GESTIONALE COLLOQUIO - ROSSELLA</title>
</head>
<body style="background-color: #afc1d6">
<h1>GESTIONE JOB OFFER</h1>

<ul>

<li>
<h3>RICERCA JOB OFFER BY TITLE</h3>
<button><a style="text-decoration: none; color: inherit" href="${pageContext.request.contextPath}/JobOfferCtr/preInsertTitle">Inserisci il titolo da cercare</a></button>
</li>
<hr style="border-color: #000000">

<li>
<h3>RICERCA JOB OFFER BY START DATE AND END DATE</h3>
<button><a style="text-decoration: none; color: inherit" href="${pageContext.request.contextPath}/JobOfferCtr/preInsertStartDateAndEndDate">Inserisci le date da cercare</a></button>
</li>
<hr style="border-color: #000000">
</ul>

</body>
</html>