<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>

    <style>
        div.search {display: none !important}
    </style>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pos</title>


    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap-grid.min.css">


    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">


    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/stylepositions.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/mainstyle.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/lib/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/header.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/header.js"></script>



    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>


<jsp:include page="header.jsp"/>


<div class="container mt-5">
    <div class="row">


        <!-- Карточка -->
<c:forEach items="${allProducts}"  var="positions">
        <div class="col-md-2">
            <div class="product">
                <div class="image">
                    <img  src="${positions.img}"/>
                </div>
                <div class="info">

                    <h3>${positions.name}</h3>



                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exam${positions.id}">
                        Подробнее
                    </button>


                    <div class="modal fade" id="exam${positions.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-dialog modal-dialog-scrollable">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Описание</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        ${positions.description}
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">изменить</button>
                                        <button type="button" class="btn btn-primary">удалить</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <ul class="rating">
                        <li><ion-icon name="star"></ion-icon></li>
                        <li><ion-icon name="star"></ion-icon></li>
                        <li><ion-icon name="star"></ion-icon></li>
                        <li><ion-icon name="star"></ion-icon></li>
                        <li><ion-icon name="star-half"></ion-icon></li>
                    </ul>

                    <div class="info-price">
                        <span class="price">${positions.price}<small>р</small></span>
                        <form action="${pageContext.request.contextPath}/addproduct" method="post" onsubmit="addPos()">
                            <input type="hidden" name="positionId" value="${positions.id}"/>
                            <input type="hidden" name="action" value="add"/>
                        <button type="submit" class="add-to-cart"><ion-icon name="cart-outline"></ion-icon></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
</c:forEach>

    </div>
</div>


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>

<script type="text/javascript">
    function addPos() {
        alert("добавлено")
    }
</script>
</body>
</html>



