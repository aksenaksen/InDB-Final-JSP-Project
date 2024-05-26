<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>domestic</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="domestic.css">
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
          <img src="./image/seoul1.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="./image/jeju1.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="./image/busan1.jpg" class="d-block w-100" alt="...">
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
    <form>
      <p class="d-inline-flex gap-1">
        <a class="btn btn-primary" data-bs-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">가고싶은 지역</a>
        <input class="btn btn-primary" type="date" min="2024-01-18" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2"></input>
        <button type="submit">선택</button>
      </p> 
    </form>
    <div class="row">
      <div class="col">
        <div class="collapse multi-collapse" id="multiCollapseExample1">
          <div class="card card-body card-button">
            <button class="btn1">서울</button>
            <button class="btn2">부산</button>
            <button class="btn3">제주</button>
            <button class="btn4">독도</button>
            <button class="btn5">경주</button>
            <button class="btn6">전주</button>
          </div>
        </div>
      </div>
    </div>

  <h2 id="font">모두의 추천상품</h2>
  <div class="row row-cols-1 row-cols-md-4 g-4" id="cardbox">
    <div class="col" id="card2">
      <div class="card card2">
        <img src="./image/seoul2.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">국내여행</p>
              <h5 class="card-title"><b>서울</b></h5>
              <p class="card-text">#경복궁 #남산타워 #북촌한옥마을</p>
              <p class="card-price"><b>300,000원~</b></p>  
        </div>
      </div>
    </div>
    <div class="col" id="card2">
      <div class="card card2">
        <img src="./image/busan2.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">국내여행</p>
            <h5 class="card-title"><b>부산</b></h5>
            <p class="card-text">#해운대 #감천문화마을 #송도해상케이블카</p>
            <p class="card-price"><b>250,000원~</b></p> 
        </div>
      </div>
    </div>
    <div class="col" id="card2">
      <div class="card card2">
        <img src="./image/jeju1.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">국내여행</p>
            <h5 class="card-title"><b>제주</b></h5>
            <p class="card-text">#성산일출봉 #만장굴 #우도</p>
            <p class="card-price"><b>500,000원~</b></p>   
        </div>
      </div>
    </div>
    <div class="col" id="card2">
      <div class="card card2">
        <img src="./image/dokdo1.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">국내여행</p>
            <h5 class="card-title"><b>독도</b></h5>
            <p class="card-text">#숫돌바위 #삼형제굴바위 #천장굴</p>
            <p class="card-price"><b>600,000원~</b></p>   
        </div>
      </div>
    </div>
    <div class="col" id="card2">
      <div class="card card2">
        <img src="./image/gyeongju1.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">국내여행</p>
            <h5 class="card-title"><b>경주</b></h5>
            <p class="card-text">#불국사 #대릉원 #경주월드</p>
            <p class="card-price"><b>250,000원~</b></p> 
        </div>
      </div>
    </div>
    <div class="col" id="card2">
      <div class="card card2">
        <img src="./image/jeonju1.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-cencept">국내여행</p>
            <h5 class="card-title"><b>전주</b></h5>`
            <p class="card-text">#전주한옥마을 #전주덕진공원</p>
            <p class="card-price"><b>250,000원~</b></p> 
        </div>
      </div>
    </div>
  </div>
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
  </body>
</html>