<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <style>
        .navbar-logo {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }
    </style>

</head>
<body>
<jsp:include page="include.jsp"/>
<jsp:include page="menuPage.jsp"/>

<a class="navbar-logo" href=""><img src="images/hp.png" alt="laptop"></a>

<jsp:include page="./templates/footer.jsp"/>

</body>
</html>