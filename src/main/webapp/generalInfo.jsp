<%--
  Created by IntelliJ IDEA.
  User: Pominov7
  Date: 06.10.2022
  Time: 18:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="include.jsp"/>
<jsp:include page="menuPage.jsp"/>
<title>Info</title>
<br>
<table class="table table-bordered align-middle ">
    <thead>
    <tr class="align-middle text-center">
        <th scope="col">Производитель</th>
        <th scope="col">Штаб квартира</th>
        <th scope="col">Логотип</th>
        <th scope="col">Количество сотрудников</th>
        <th scope="col">Краткая информация</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Hewlett-Packard</td>
        <td>Пало-Альто, штат Калифорния, США.</td>
        <td><img src="images/logoHP.png" alt="laptop" height="87"></td>
        <td>66000 (по данным на 2017 год)</td>
        <td><b>Hewlett-Packard</b> (HP, Хью́летт-Па́ккард) — созданная в 1939 году компания-поставщик аппаратного и
            программного
            обеспечения для организаций и индивидуальных потребителей.
        </td>
    </tr>
    </tbody>
</table>
<jsp:include page="./templates/footer.jsp"/>
