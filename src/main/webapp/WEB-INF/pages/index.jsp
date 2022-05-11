<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/lib/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/mainstyle.css">



</head>
<body>

<jsp:include page="header.jsp"/>

   <div id="headerwrap">
      <div class="container">
          <div class="row centered">
              <div class="col-lg-8 col-lg-offset-2">
                  <h1>!</h1>
                  <h2>!</h2>
              </div>
          </div>
      </div>
  </div>

  <div class="container w">
      <div class="row centered">
          <br><br>
          <div class="col-lg-4">
              <i class="fa fa-heart"></i>
              <h4>Качество</h4>
              <p>!!!!!</p>
          </div>
          <div class="col-lg-4">
              <i class="fa fa-car"></i>
              <h4>Доставка</h4>
              <p>!!!!!</p>
          </div>
          <div class="col-lg-4">
              <i class="fa fa-gift"></i>
              <h4>Скидки</h4>
              <p>!!!!!</p>
          </div>
      </div>
      <br><br>
  </div>

  <div id="dg">
      <div class="container">
          <div class="row centered">
              <h4>Топ продаж</h4>
              <br>
              <div class="col-lg-4">
                  <div class="tilt">
                      <a href="#"><img  src="${contextPath}/resources/img/mailberg.png" alt=""/></a>
                  </div>
              </div>
              <div class="col-lg-4">
                  <div class="tilt">
                      <a href="#"><img  src="${contextPath}/resources/img/sang.png" alt=""/></a>
                  </div>
              </div>
              <div class="col-lg-4">
                  <div class="tilt">
                      <a href="#"><img  src="${contextPath}/resources/img/creman.png" alt=""/></a>
                  </div>
              </div>
          </div>
      </div>
  </div>

  <div class="container wb">
      <div class="row centered">
          <br><br>
          <div class="col-lg-8 col-lg-offset-2">
              <h4>Более 1500 наименований со всего света!</h4>
              <p>!!!</p>
              <p><br><br></p>
          </div>
          <div class="col-lg-2"></div>
          <div class="col-lg-10 col-lg-offset-1">
              <img src="${contextPath}/resources/img/image_5.jpg" alt="" class="img-responsive">
          </div>
      </div>
  </div>
  <div id="lg">
      <div class="container">
          <div class="row centered">
              <h4>Топ рейтигов</h4>
              <div class="col-lg-2 col-lg-offset-1">
                  <img src="${contextPath}/resources/img/kav.gif" alt="">
              </div>
              <div class="col-lg-2">
                  <img src="${contextPath}/resources/img/tes.gif" alt="">
              </div>
              <div class="col-lg-2">
                  <img src="${contextPath}/resources/img/oneg.gif" alt="">
              </div>
              <div class="col-lg-2">
                  <img src="${contextPath}/resources/img/images.gif" alt="">
              </div>
              <div class="col-lg-2">
                  <img src="${contextPath}/resources/img/cor.gif" alt="">
              </div>
          </div>
      </div>
  </div>
  <div id="r">
      <div class="container">
          <div class="row centered">
              <div class="col-lg-8 col-lg-offset-2">
                  <h4>Помощь в подборе напитков</h4>
              </div>
          </div>
      </div>
  </div>
  <div id="f">
      <div class="container">
          <div class="row centered">
              <a href="#"><i class="fa fa-twitter"></i></a>
              <a href="#"><i class="fa fa-facebook"></i></a>
              <a href="#"><i class="fa fa-vk"></i></a>
          </div>
      </div>
  </div>


  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.slim.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>