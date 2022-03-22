<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<br>
<br>
${requestScope.msg}
<br>
<br>
${requestScope.fejl}
<br>
<br>
<br>
<br>

<c:forEach items="${applicationScope.kontis}" var="item" >

${item.value.navn}  : ${item.value.saldo}
    <br>

</c:forEach>



<form action="LogIn">
    <label for="fname">angiv navet på kontohaver:</label><br>
    <input type="text" id="fname" name="navn" value="valborg"><br>
    <label for="lname">skriv kode:</label><br>
    <input type="text" id="lname" name="koden" value="Doe"><br><br>
    <input type="submit" value="log in">
</form>



</body>
</html>