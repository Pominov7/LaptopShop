<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Pominov7
  Date: 07.10.2022
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LaptopList</title>
    <style>
        html { overflow-x:  hidden; }
        main{
            text-align: center;
        }
    </style>
</head>
<body>
<jsp:include page="include.jsp"/>
<jsp:include page="menuPage.jsp"/>

<br>
<main>
        <div class="row col-sm-12">
            <c:forEach var="laptop" items="${laptop}" varStatus="loop">
                <div class="col-sm-3">
                    <div class="card" style="width: 19rem; height: 20rem">
                        <img src="${previews[loop.index].uri}" class="card-img-top" height="224" alt="img">
                        <div class="card-body">
                            <h5 class="card-title">${laptop.company}</h5>
                            <p class="card-text">${laptop.model}</p>
                            <form action="LaptopServlet" method="post">
                                <input type="hidden" name="pk" value="${laptop.id}">
                                <button class="btn btn-primary">${laptop.price}</button>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
</main>

<jsp:include page="./templates/footer.jsp"/>
</body>
</html>
