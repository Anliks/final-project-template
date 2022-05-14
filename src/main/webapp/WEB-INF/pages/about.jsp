<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>

    <style>
        div.search {display: none !important}
    </style>

    <!-- Bootstrap сетка -->
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap-grid.min.css">

    <!-- Шрифты с Google Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">

    <!-- Стили сайта -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/stylepositions.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/mainstyle.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/lib/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/header.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/header.js"></script>


    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="about">
<h3>Телефон 12345</h3>
<h3>Email @@@@@mail.ru</h3>
</div>

</body>
</html>