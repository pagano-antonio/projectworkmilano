<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
		
	background: #00ced120;

        body {
        text-align:center;
            font-family: Arial, sans-serif;           
            padding: 20px;
            font-size:16px!important;
        }             		
		
        h1 {
            text-align: center;
            color: #66FFFF;
        }

        table {
            font-size:14px;
            width: 60%;            
            margin-top: 20px;            
        }
        
        table.center {
  		margin-left: auto; 
  		margin-right: auto;
		}

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
            background-color: #C9DFEC;          
        }

        th {
            background-color: #1669C7;
            text-color: #F0F8FF
        }
        
</style>
</head>
<body>
	<h1>MI HOME ES TU HOME</h1>
	
	<table class="center">
	
		<tr>
		<th style="color:white;">RICERCHE SU CANDIDATE</th>
		</tr>
		
			<tr>		
			<td><a href="${pageContext.request.contextPath}/candidate/findCandidateBySkillForm">CERCA UN CANDIDATO TRAMITE UNA SKILL</a></td>
			</tr>
	</table>
</body>
</html>