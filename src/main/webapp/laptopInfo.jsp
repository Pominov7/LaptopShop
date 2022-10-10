<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Pominov7
  Date: 07.10.2022
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Info</title>
</head>
<body>
<jsp:include page="include.jsp"/>
<jsp:include page="menuPage.jsp"/>
<style>
    main {
        text-align: center;
    }
</style>
<main>
    <br>
    <br>
    <br>
    <c:forEach var="image" items="${images}">
        <img src="${image.uri}" alt="img">
    </c:forEach>
    <br>
    <strong><c:out value="${laptop.company}"/></strong>

    <br>
    <i> <c:out value="${laptop.model}"/></i>

    <br>
    Цена:<c:out value="${laptop.price}"/> руб.

</main>

<jsp:include page="./templates/footer.jsp"/>
</body>
</html>
