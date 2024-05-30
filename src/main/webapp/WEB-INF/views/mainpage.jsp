<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>monkey trip</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <link rel="stylesheet" href="mainpage.css">
</head>
<% if (request.getAttribute("errorMessage") != null) { %>
<script>
  alert("<%= request.getAttribute("errorMessage") %>");
</script>
<% } %>
<body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
  
    <div>
      <div id="carouselExampleIndicators" class="carousel slide">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
            aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
            aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
            aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="index_image/city.bmp" class="d-block w-100">
          </div>
          <div class="carousel-item">
            <img src="index_image/uk.jpg" class="d-block w-100">
          </div>
          <div class="carousel-item">
            <img src=index_image/seoul.jpg" class="d-block w-100">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
          data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
          data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      <h2>주간 인기상품</h2>
      <!-- 카드 입니다 -->
      <div class="row row-cols-1 row-cols-md-2 g-4" id="cardbox">
        <div class="col" id="card2">
          <div class="card">
            <img src="index_image/japan.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <p class="card-cencept">인천 출발</p>
              <h5 class="card-title">인천 ~ 북해도</h5>
              <p class="card-text"></p>
            </div>
          </div>
        </div>
        <div class="col" id="card2">
          <div class="card">
            <img src="index_image/bora.bmp" class="card-img-top" alt="...">
            <div class="card-body">
              <p class="card-cencept">보라보라 보라돌이</p>
              <h5 class="card-title">보라카이</h5>
              <p class="card-text"></p>
            </div>
          </div>
        </div>
        <div class="col" id="card2">
          <div class="card">
            <img src="index_image/city.bmp" class="card-img-top" alt="...">
            <div class="card-body">
              <p class="card-cencept">안전한 나라</p>
              <h5 class="card-title">싱가폴</h5>
              <p class="card-text"></p>
            </div>
          </div>
        </div>
        <div class="col" id="card2">
          <div class="card">
            <img src="index_image/uk2.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <p class="card-cencept">신사의 나라</p>
              <h5 class="card-title">영국</h5>
              <p class="card-text"></p>
            </div>
          </div>
        </div>
        <div class="col" id="card2">
          <div class="card">
            <img src="index_image/seoul.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <p class="card-cencept">아이스크림이 맛있는</p>
              <h5 class="card-title">터키</h5>
              <p class="card-text"></p>
            </div>
          </div>
          </div>
          <div class="col" id="card2">
          <div class="card">
            <img src="index_image/waikiki.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <p class="card-cencept">니가가라 하와이</p>
              <h5 class="card-title">하와이</h5>
              <p class="card-text"></p>
            </div>
          </div>
        </div>
      </div>
    </div target="main">
</body>
</html>