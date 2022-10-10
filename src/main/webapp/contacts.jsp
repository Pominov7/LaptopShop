<%--
  Created by IntelliJ IDEA.
  User: Pominov7
  Date: 06.10.2022
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    @import url('https://fonts.googleapis.com/css?family=Montserrat:400,600&subset=cyrillic');

    @import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');

    html {
        font-family: sans-serif;
        background: #E4EFD1;

    }

    body {
        margin: 0;
    }

    h3 {
        font-weight: 600;
        font-size: 36px;
        margin: 60px 0px;
    }

    .wrapper {
        width: 600px;
        margin: 0 auto;
    }


    .clearfix:after,
    .clearfix:before {
        content: ".";
        display: block;
        overflow: hidden;
        visibility: hidden;
        font-size: 0;
        line-height: 0;
        width: 0;
        height: 0;
        clear: both;
    }

    .ico-wrap {
        color: #ECAB00;
        width: 50px;
        height: 50px;
        margin: 25px 20px 2px 2px;
        display: block;
        text-align: center;
        font-size: 25px;
        border: 2px solid #ECAB00;
        float: left;
    }

    .ico-contact {
        line-height: 1.9 !important;
    }

    .descript-wrapper {
        float: left;
        margin-bottom: 20px;
    }

    .aio-icon-title {
        font-size: 18px;
        color: #ECAB00;
        line-height: 1;
        margin-bottom: 10px;
    }

    @media (max-width: 767px) {
        .descript-wrapper,
        .ico-wrap {
            float: none;
            text-align: center;
        }

        .ico-wrap {
            margin: 0 auto 15px auto;
        }
    }
</style>
<title>Contact</title>
<jsp:include page="include.jsp"/>
<jsp:include page="menuPage.jsp"/>
<br>
<br>
<br>
<div class="wrapper">
    <h3 style="text-align:center;">Контакты</h3>

    <div class="ico-wrap"><i class="fa fa-map-marker ico-contact"></i>
    </div>
    <div class="descript-wrapper">
        <h4 class="aio-icon-title">Наш адрес:</h4>
        <div class="aio-icon-description">
            630099, г. Новосибирск, ул. Ленина,
            <br>дом 5, 1 этаж, офис 105
        </div>
    </div>

    <span class="clearfix"></span>

    <div class="ico-wrap"><i class="fa fa-clock-o ico-contact"></i>
    </div>
    <div class="descript-wrapper">
        <h4 class="aio-icon-title">Время работы офиса и склада:</h4>
        <div class="aio-icon-description">
            пн.-пт. с 9:00 до 18:00, без перерыва.
            <br>сб, вс — выходной
        </div>
    </div>

    <span class="clearfix"></span>

    <div class="ico-wrap">
        <i class="fa fa-envelope ico-contact"></i>
    </div>
    <div class="descript-wrapper">
        <h4 class="aio-icon-title">Электронная почта:</h4>
        <div class="aio-icon-description">
            laptop.nsk@mail.ru
            <br>shopLaptop.nsk@mail.ru
        </div>
    </div>

    <span class="clearfix"></span>

    <div class="ico-wrap">
        <i class="fa fa-phone ico-contact"></i>
    </div>
    <div class="descript-wrapper">
        <h4 class="aio-icon-title">Наши Телефоны:</h4>
        <div class="aio-icon-description">
            +7 (383) 230-10-40
            <br>+7 (923) 119-60-55
        </div>
    </div>

    <span class="clearfix"></span>

</div>
<jsp:include page="./templates/footer.jsp"/>
