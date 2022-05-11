<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Registration</title>

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
    <script src="${contextPath}/resources/js/validatorregister.js"></script>
  </head>

  <body>
  <div class="form-box">
  <form  id="form_signup" class="form form_signup" modelAttribute="form_signup" method="POST" >
    <h3 class="from_title">Регистрация</h3>

    <p>
      <input type="text" class="form_input" name="username" placeholder="Имя" path="username">
      <form:errors path="username"></form:errors>
      ${usernameError}
    </p>

    <p>
      <input type="email" class="form_input" name="email" placeholder="Email" path="email">
    </p>

    <p>
      <input type="password" id="pas" class="form_input" name="password" placeholder="Пароль" path="password">
      <form:errors path="password"></form:errors>
      ${passwordError}
    </p>

    <p>
      <input type="password" class="form_input" name="confirmPass" placeholder="Подтвердите пароль" path="confirmpass">
    </p>

    <p>
      <input type="date" class="form_input" name="dateOfBirth" placeholder="Введите дату рождения" path="date">
    </p>

    <p>
      <button class="form_btn form_btn_signup" type="submit">Зарегистрироваться</button>
    </p>

  </form>

    <p>
    <h2 class="block-item_title"> У вас уже есть аккаунт</h2>
    <form method="LINK" action="/login">
    <button class="block-item_btn signin-btn">Войти</button>
    </form>
    </p>


  </div>
  </body>
</html>
