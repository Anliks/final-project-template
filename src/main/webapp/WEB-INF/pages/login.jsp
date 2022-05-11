<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ru">


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width-device-width, initial-scale=1.0">
    <title>Login</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>


    <script script type="text/javascript" src="${contextPath}/resources/js/login.js"></script>

    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">

</head>
<body>

<article class="container">

    <div class="form-box">

        <form action="/login" name="loginForm" id="loginForm"  method="POST" >
            <h3 class="from_title">Вход</h3>
            <p>
                <input type="text" class="required form_input" id="log" name="username" placeholder="Логин" >
            </p>

            <p>
                <input type="password" class="form_input" id="pass" name="password" placeholder="Пароль">
            </p>
            <div class="span"></div>

            <p>
                <button type="submit" class="form_btn btn">Войти</button>
            </p>
            <h3><div class="messages"> </div></h3>
            <p>
                <a href="" class="form_forgot" id="si">Восстановление пароля</a>
            </p>
            ${usernameError}
            <br><br>
        </form>

        <p>
        <h2 class="block-item_title">У вас нет аккаунта?</h2>
        <form method="LINK" action="/registration">
            <button class="block-item_btn signup-btn">Зарегистрируйтесь</button>
        </form>
        </p>


</div>

</article>

</body>
</html>