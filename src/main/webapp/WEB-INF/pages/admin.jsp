<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>

    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/lib/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/styleadd.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/header.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/admintable.css">


</head>
<body>

<header class="site-header">
    <div class="wrapper site-header__wrapper">
        <h3>${pageContext.request.userPrincipal.name}</h3>
        <nav class="nav">
            <button class="nav__toggle" aria-expanded="false" type="button">
                menu
            </button>
            <ul class="nav__wrapper">
                <li class="nav__item"><a href="index">Домой</a></li>
                <li class="nav__item"><a href="addform">Добавление Товаров</a></li>
                <li class="nav__item"><a href="#">Services</a></li>
                <li class="nav__item"><a href="#">Hire us</a></li>
                <li class="nav__item"><a href="/logout">Выйти</a></li>
            </ul>
        </nav>
    </div>
</header>

<div  class="wrapper">
    <form id="form_signup" action="a" class="form form_signup" >
        <br><br>
        <div class="main">
            <h3 class="from_title">Список участников</h3>
            <table>
                <tr>
                    <th>ID</th>
                    <th>UserName</th>
                    <th>Password</th>
                    <th>Roles</th>
                </tr>
                <c:forEach items="${allUsers}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>
                        <c:forEach items="${user.roles}" var="role">${role.name}; </c:forEach>
                    </td>
                    <td>
                    <form action="${pageContext.request.contextPath}/admin" method="post">
                        <input type="hidden" name="userId" value="${user.id}"/>
                        <input type="hidden" name="action" value="delete"/>
                        <button type="submit">Delete</button>
                    </form>
                    </td>
                </tr>
                </c:forEach>

            </table>

            </div>
        <div class="main">
            <h3 class="from_title">Список товаров</h3>
            <table>
                <tr>
                    <th>ID</th>
                    <th>name</th>
                    <th>type</th>
                    <th>country</th>
                    <th>description</th>
                    <th>price</th>
                </tr>
                <c:forEach items="${allProducts}" var="positions">
                    <tr>
                        <td>${positions.id}</td>
                        <td>${positions.name}</td>
                        <td>${positions.type}</td>
                        <td>${positions.country}</td>
                        <td>${positions.description}</td>
                        <td>${positions.price}</td>
                        <td>

                        </td>
                        <td>
                            <form action="${pageContext.request.contextPath}/admin" method="post">
                                <input type="hidden" name="positionsId" value="${positions.id}"/>
                                <input type="hidden" name="action" value="delete"/>
                                <button type="submit">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>

            </table>
        </div>
    </form>
</div>
</body>
</html>