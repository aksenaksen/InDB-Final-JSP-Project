<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <link rel="stylesheet" href="oversea.css">
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
  <div class="reservation">
    <input type="text" list="start" placeholder="출발지" size="12">
    <datalist id="start">
      <option value="인천">Incheon</option>
      <option value="대구">Daegu</option>
      <option value="김해">Kimhae</option>
      <option value="제주">Jeju</option>
    </datalist>
    <input type="text" list="destination" placeholder="도착지" size="12">
    <datalist id='destination'>
      <option value="미국">US</option>
      <option value="일본">Japan</option>
      <option value="중국">China</option>
      <option value="베트남">Vet</option>
    </datalist>
    <div>출발일<input type="date" name="" id=""></div>
    <div>도착일<input type="date" name="" id=""></div>
    <button type="submin">검색하기</button>
  </div>
  <h2 id="font">모두의 추천상품</h2>
  <div class="row row-cols-1 row-cols-md-4 g-4" id="cardbox">
    <div class="col" id="card2">
      <a href="japan.jsp">
        <div class="card">
          <img src="img/japan.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <p class="card-cencept">해외여행</p>
                <h5 class="card-title"><b>일본</b></h5>
                <p class="card-text">#교토 #온천 #신사</p>
                <p class="card-price"><b>500,000원~</b></p>  
          </div>
        </div>
      </a>
    </div>
    <div class="col" id="card2">
      <div class="card">
        <img src="img/us.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">해외여행</p>
            <h5 class="card-title"><b>미국</b></h5>
            <p class="card-text">#뉴욕 #자유의 여신상</p>
            <p class="card-price"><b>1,500,000원~</b></p> 
        </div>
      </div>
    </div>
    <div class="col" id="card2">
      <div class="card">
        <img src="img/china.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">해외여행</p>
            <h5 class="card-title"><b>중국</b></h5>
            <p class="card-text">#베이징 #중화요리 #만리장성</p>
            <p class="card-price"><b>800,000원~</b></p>   
        </div>
      </div>
    </div>
    <div class="col" id="card2">
      <div class="card">
        <img src="img/vet.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">해외여행</p>
            <h5 class="card-title"><b>베트남</b></h5>
            <p class="card-text">#다낭 #호이안 #쌀국수</p>
            <p class="card-price"><b>800,000원~</b></p>   
        </div>
      </div>
    </div>
    <div class="col" id="card2">
      <div class="card">
        <img src="img/EK.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">해외여행</p>
            <h5 class="card-title"><b>영국</b></h5>
            <p class="card-text">#런던 #빅벤 #축구 경기장</p>
            <p class="card-price"><b>3,500,000원~</b></p> 
        </div>
      </div>
    </div>
    <div class="col" id="card2">
      <div class="card">
        <img src="img/Egypt.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">해외여행</p>
            <h5 class="card-title"><b>이집트</b></h5>
            <p class="card-text">#카이로 #스핑크스 #일사병 주의</p>
            <p class="card-price"><b>1,500,000원~</b></p> 
        </div>
      </div>
    </div>
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