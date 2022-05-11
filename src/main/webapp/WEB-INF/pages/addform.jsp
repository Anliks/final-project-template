<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add</title>

    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/lib/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/styleadd.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/header.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/footer.js"></script>



</head>
<body>

<jsp:include page="header.jsp"/>

<div  class="wrapper">
<form id="form_signup" modelAttribute="form_signup" class="form form_signup" method="POST">
    <br><br>
    <div class="main">
    <h3 class="from_title">Добавление позиции</h3>
    <p>
        <input type="text" class="form_input" id="name" name="name" placeholder="Наименование">
    </p>

    <p>
        <input type="text" class="form_input" id="type" name="type" placeholder="вид напитка">
    </p>

    <p>
        <input type="text" class="form_input" id="country" name="country" placeholder="Страна">
    </p>

    <p>
        <input type="text" class="form_input" id="descr" name="description" placeholder="Описание">
    </p>

        <p>
            <input type="text" class="form_input" id="price" name="price" placeholder="Цена">
        </p>

    <p>
        <button type="submit" class="form_btn">Добавить</button>
    </p>
    </div>

</form>
</div>
<my-footer></my-footer>
</body>
</html>