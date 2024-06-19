<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <link rel="stylesheet" href="oversea.css">
  <title>Document</title>

  <% if (request.getAttribute("errorMessage") != null) { %>
  <script>
    alert("<%= request.getAttribute("errorMessage") %>");
    console.log("<%= request.getAttribute("errorMessage") %>");
  </script>
  <% } %>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/snowmountain.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/japan.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/china.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<h2 id="font">모두의 추천상품</h2>
<div class="row row-cols-1 row-cols-md-4 g-4" id="cardbox">
  <c:forEach var="country" items="${countryList}">
    <div class="col" id="card2">
      <a href="/course/detail/${country.id}">
        <div class="card">
          <img src="country_image/${country.title}.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <p class="card-concept">${country.courseType == 'DOMESTIC' ? '국내여행' : '해외여행'}</p>
            <h5 class="card-title"><b>${country.name}</b></h5>
          </div>
        </div>
      </a>
    </div>
  </c:forEach>

<%--  <div class="card">--%>
<%--    <img src="img/EK.jpg" class="card-img-top" alt="...">--%>
<%--    <div class="card-body">--%>
<%--      <p class="card-cencept">해외여행</p>--%>
<%--      <h5 class="card-title"><b>영국</b></h5>--%>
<%--      <p class="card-text">#런던 #빅벤 #축구 경기장</p>--%>
<%--      <p class="card-price"><b>3,500,000원~</b></p>--%>
<%--    </div>--%>
<%--  </div>--%>
</div>
</body>
<footer>
  <div class="banner">
    <div class="banner1">
      <p>아시아나항공 X 모두투어 제휴런칭!</p>
      <p><b>아시아나항공 마일리지 쓰고,<br>몽키투어랑 여행가요!</b></p>
    </div>
    <div class="banner2">
      <p>제주도!</p>
      <p><b>제주에어텔 예약시<br>렌터카7% 할인</b></p>
    </div>
  </div>
</footer>
</html>
