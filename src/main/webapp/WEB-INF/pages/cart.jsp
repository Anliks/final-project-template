<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/cart.css">

</head>
<body>

<c:forEach items="${allProductsOfUser}" var="product">
<div class="row">
    <div class="col-lg-3 col-sm-3 col-xs-12" style="height: 100px; line-height: 100px;">
        <img  src="${product.img}" style="width: 80px; height: 80px;  " />
    </div>
    <div  class="col-lg-3 col-sm-3 col-xs-12 mob-fix" style="height: 100px; line-height: 100px;">
        ${product.name}
    </div>
    <div class="col-lg-2 col-sm-2 col-xs-12 mob-fix" style="height: 100px; line-height: 100px;">
        ${product.price}
    </div>
    <div class="col-lg-1 col-sm-2 col-xs-12 mob-fix" style="height: 100px; line-height: 100px;">
        1
    </div>
    <form action="${pageContext.request.contextPath}/deleteproduct" method="post">
    <div class="col-lg-3 col-sm-2 col-xs-12 mob-fix" style="height: 100px; line-height: 100px;">
        <input type="hidden" name="positionId" value="${product.id}"/>
        <input type="hidden" name="action" value="delete"/>
        <button type="submit">Удалить</button>
    </div>
    </form>
</div>
</c:forEach>

<hr>
<div style="width: 100%; text-align: right;">
    <div style="width: 50%; float: right;">
        <button>Пересчитать</button>
        <button>Оформить заказ</button>
    </div>
</div>



</body>
</html>