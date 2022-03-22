<%--
  Created by IntelliJ IDEA.
  User: nbh
  Date: 22/03/2022
  Time: 10.05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Brugerside</title>
</head>
<body>

<h1>Velkommen ${sessionScope.navn}, du er nu logget ind på din konto</h1>

din saldo er ${sessionScope.konto.saldo}

<br>
<br>
<br>
<h2>Indsæt</h2>

<h3>${requestScope.fejl}</h3>
<form action="TransaktionServlet">
    <label for="fname">Angiv beløb:</label><br>
    <input type="text" id="fname" name="beløb" value=0><br>

    <input type="submit" value="Indsæt">
</form>
<br>
    <br>
    <br>
    <br>

    <h2>Hæv</h2>
    <h3>${requestScope.fejl}</h3>
    <form action="HævServlet">
        <label for="fhæv">Angiv beløb:</label><br>
        <input type="text" id="fhæv" name="beløb" value=0><br>
        <input type="submit" value="hæv">
</form>
</body>
</html>
