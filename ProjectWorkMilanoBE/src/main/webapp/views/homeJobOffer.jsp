<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>GESTIONALE COLLOQUIO - ROSSELLA</title>
    <style>
        .info-box {
            border: 2px solid #000000;
            padding: 10px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body style="background-color: #afc1d6">
    <h1>GESTIONE JOB OFFER</h1>

    <div class="info-box">
    	<h2>TRACCIA:</h2>
        <h3>JOB_OFFER</h3>
        <p>- title</p>
        <p>- start and end date</p>
        <p>- id_company_client</p>
        <p>- min_ral, max_ral</p>
        <p>- id_contract_type</p>
        <p>- per skill</p>
    </div>

    <ul>
        <li>
            <h3>INSERIMENTO JOB OFFER</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preInsertJobOffer" style="text-decoration: none; color: inherit"><button>Inserisci un'offerta di lavoro</button></a>
            <hr style="border-color: #000000">
        </li>

        <li>
            <h3>RICERCA JOB OFFER BY ID</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preInsertIdJobOffer" style="text-decoration: none; color: inherit"><button>Inserisci l'id da cercare</button></a>
            <hr style="border-color: #000000">
        </li>

        <li>
            <h3>RICERCA JOB OFFER BY TITLE</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preInsertTitle" style="text-decoration: none; color: inherit"><button>Inserisci il titolo da cercare</button></a>
            <hr style="border-color: #000000">
        </li>

        <li>
            <h3>RICERCA JOB OFFER BY START DATE AND END DATE</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preInsertStartDateAndEndDate" style="text-decoration: none; color: inherit"><button>Inserisci le date da cercare</button></a>
            <hr style="border-color: #000000">
        </li>

        <li>
            <h3>RICERCA JOB OFFER BY ID COMPANY CLIENT</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preInsertIdCompanyClient" style="text-decoration: none; color: inherit"><button>Inserisci l'Id Company Client da cercare</button></a>
            <hr style="border-color: #000000">
        </li>

        <li>
            <h3>RICERCA JOB OFFER BY MIN_RAL AND MAX_RAL</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/findJobOfferBetweenMinRalAndMaxRalForm" style="text-decoration: none; color: inherit"><button>Inserisci una Ral Minima e Ral massima</button></a>
            <hr style="border-color: #000000">
        </li>

        <li>
            <h3>RICERCA JOB OFFER BY ID CONTRACT TYPE</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/findJobOfferByIdContractTypeForm" style="text-decoration: none; color: inherit"><button>Inserisci l'Id Contract Type da cercare</button></a>
            <hr style="border-color: #000000">
        </li>

        <li>
            <h3>RICERCA JOB OFFER BY SKILL</h3>
            <a href="${pageContext.request.contextPath}/JobOfferCtr/preRicercaSkill" style="text-decoration: none; color: inherit"><button>Inserisci la Skill da cercare</button></a>
            <hr style="border-color: #000000">
        </li>
    </ul>
</body>
</html>
