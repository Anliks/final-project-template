<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Header</title>


	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">
	<!-- Шрифты с Google Fonts -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">

	<!-- Стили сайта -->
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/header.css">
</head>
<body>
<nav class="navbar">
	<div class="container">




		<h3>${pageContext.request.userPrincipal.name}</h3>
		<a href="index" class="navbar-brand">ElGRADO</a>
        <div class="navbar-wrap">
		<ul class="navbar-menu">

			<div class="col-md-4 search">
				<form action="search" method="get">
					<input type="text" class="form-control" name="name" placeholder="Поиск">
                              ${message}
				</form>
			</div>

			<li><a href="positions">Список позиций</a></li>


			<sec:authorize access="hasRole('ADMIN')">
			<li><a href="addform">Добавление позиции</a></li>
			</sec:authorize>


			<li><a href="about">контакты</a></li>
			<sec:authorize access="hasRole('ADMIN')">
			<li><a href="admin">Админ</a></li>
			</sec:authorize>
		</ul>

			<sec:authorize access="!isAuthenticated()">
		<a href="login" class="signupin">Войти</a>
			<a href="registration" class="signupin">Регистрация</a>
			</sec:authorize>

			<sec:authorize access="isAuthenticated()">
			<a href="/logout" class="signupin">Выйти</a>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
			<a class="cart" href="cart"><ion-icon name="cart-outline"></ion-icon></a>
			</sec:authorize>
		</div>

	</div>

</nav>

<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</body>
</html>