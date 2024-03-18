<!DOCTYPE html>
<html>
<head>
    <title>GESTIONALE COLLOQUIO</title>
    <style>
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
