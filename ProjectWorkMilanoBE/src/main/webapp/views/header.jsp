<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html> 
<html>
<head>
    <title>Header</title>
    <style>
        /* Stile per l'header fisso */
        header {
            background-color: #f2f2f2;
            padding: 10px;
            position: fixed;
            top: 0;
            width: 100%;
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        #user-info {
            display: flex;
            align-items: center;
            cursor: pointer;
        }

        #user-info img {
            width: 30px;
            height: 30px;
            margin-right: 10px;
        }

        #user-name {
            font-weight: bold;
            margin-right: 10px;
        }

        #edit-link {
            text-decoration: none;
            color: #333;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <header>
        <div id="user-info">
            <!-- Icona utente -->
            <img src="${pageContext.request.contextPath}/images/user.png" alt="User Icon">

            <!-- Nome utente e link per la modifica dei dati -->
            <span id="user-name">${username}</span>
            <a href="${pageContext.request.contextPath}/modificaDati" id="edit-link">Modifica Dati</a>
        </div>
    </header>
    <script>
        // JavaScript per gestire il mouseover
        document.getElementById("user-info").addEventListener("mouseover", function () {
            // Aggiungi la logica per mostrare le informazioni sull'utente
            //alert("Informazioni sull'utente");
        });
    </script>
</body>
</html>
