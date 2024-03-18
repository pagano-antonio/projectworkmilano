<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <title>GESTIONALE COLLOQUIO</title>
   

    <style>
    
    .openoffers {
    background-color: #f5f5f5; /* Colore di sfondo */
    border: 1px solid #ddd; /* Bordo */
    border-radius: 5px; /* Bordi arrotondati */
    padding: 20px; /* Spaziatura interna */
    margin-bottom: 20px; /* Margine inferiore */
}

.openoffers h2 {
    color: #333; /* Colore del testo */
    font-size: 24px; /* Dimensione del carattere */
    margin-top: 0; /* Rimuove il margine superiore */
}

.openoffers p {
    color: #666; /* Colore del testo */
    font-size: 16px; /* Dimensione del carattere */
    margin: 10px 0; /* Margine superiore e inferiore */
}

.openoffers b {
    font-weight: bold; /* Testo in grassetto */
    color: #000; /* Colore del testo in grassetto */
}

.openoffers a {
    color: #007bff; /* Colore del testo del link */
    text-decoration: none; /* Rimuove la sottolineatura del link */
}

.openoffers a:hover {
    text-decoration: underline; /* Sottolineatura del link al passaggio del mouse */
}
    
    
    
    
    
        /* Stile per il contenuto principale */
        .content {
            margin-top: 60px; /* Altezza dell'header */
            margin-left: 200px; /* Larghezza della sidebar */
            padding: 20px;
        }
    </style>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
<%@ include file="sidebar.jsp" %>
<%@ include file="header.jsp" %>
<br>
<br>
<h1>Qui ci sarà la dashboard dinamica dell'employee</h1>

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

<div class="content">
    <h1>ROBA DI WANDA</h1>
    <%@ include file="HomeWanda.jsp" %>
    <!-- Contenuto principale sotto l'header e a destra della sidebar -->
    <h1>ROBA DI SIMO</h1>
    <%@ include file="HomeSimona.jsp" %>
        <h1>ROBA DI ROSS</h1>
    <%@ include file="HomeRossella.jsp" %>
</div>


</body>
</html>
