<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <link rel="stylesheet" href="airline.css">
  <title>Document</title>
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
        <!-- PUT Carousel Image -->
        <img src="airline_image/airplane_1 .jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <!-- PUT Carousel Image -->
        <img src="airline_image/airport_01.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">    
        <!-- PUT Carousel Image -->
        <img src="airline_image/airport_02.jpg" class="d-block w-100" alt="...">
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
  <div class="reservation">
  <div class="location">
      <p>
        출발지<input type="text" list="start">
        <datalist id="start">
          <option value="ICN,Korea">인천국제공항</option>
          <option value="GMP,Korea">김포공항</option>
          <option value="PUS,Korea">김해국제공항</option>
        </datalist>
      </p>
      <p>
        도착지<input type="text" list="end">
        <datalist id="end">
        <option value="HND,Japan">하네다 공항</option>
        <option value="DOH,Qatar">하마드 공항</option>
        <option value="SIN,Singapore">창이 공항</option>
        <option value="CDG,France">샤를 드골 공항</option>
      </datalist>
      </p>
  </div>
  <br>
<div class="date">
    <p>출발일<input type="date" name="Departure_Date" id="Departure_Date"></p>
    <p>도착일<input type="date" name="Arrival_Date" id="Arrival_Date"></p>
  </div>
    <button type="submit">검색하기</button>
  </div>
  <h2>모두의 추천상품</h2>
  <div class="row row-cols-1 row-cols-md-2 g-4" id="cardbox">
    <div class="col" id="card2">
      <div class="card">
        <img src="./airline_image/hamad.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">인천 출발</p>
          <h5 class="card-title">인천 ~ 하마드</h5>
          <p class="card-text">#카타르 여행 #아시안컵</p>
          <p class="card-price">1,500,000원 ~</p>
        </div>
      </div>
    </div>
    <div class="col" id="card2">
      <div class="card">
        <img src="./airline_image/haneda.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">김해 출발</p>
          <h5 class="card-title">김해 ~ 하네다</h5>
          <p class="card-text">#일본여행 #일본최대공항 #5성급 공항</p>
          <p class="card-price">150,000원 ~</p>
        </div>
      </div>
    </div>
    <div class="col" id="card2">
      <div class="card">
        <img src="./airline_image/changi.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">인천 출발</p>
          <h5 class="card-title">인천 ~ 창이</h5>
          <p class="card-text">#싱가포르여행 #세계 1위공항</p>
          <p class="card-price">1,500,000원 ~</p>
        </div>
      </div>
    </div>
    <div class="col" id="card2">
      <div class="card">
        <img src="./airline_image/paris.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">인천 출발</p>
          <h5 class="card-title">인천 ~ 샤를 드골</h5>
          <p class="card-text">#파리여행 #유럽 1위</p>
          <p class="card-price">2,100,000원 ~</p>
        </div>
      </div>
    </div>
    <div class="col" id="card2">
      <div class="card">
        <img src="./airline_image/IST.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">김해 출발</p>
          <h5 class="card-title">김해 ~ 이스탄불</h5>
          <p class="card-text">#튀르키예 여행 #터키아이스크림</p>
          <p class="card-price">1,450,000원 ~</p>
        </div>
      </div>
      </div>
      <div class="col" id="card2">
      <div class="card">
        <img src="./airline_image/pusan.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">김포 출발</p>
          <h5 class="card-title">김포 ~ 김해</h5>
          <p class="card-text">#국내선 #초특가항공 </p>
          <p class="card-price">35,000원 ~</p>
        </div>
      </div>
    </div>
  </div>
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
</body>
</html>