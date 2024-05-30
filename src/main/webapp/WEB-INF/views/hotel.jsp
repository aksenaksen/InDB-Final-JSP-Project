<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>monkey trip</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="hotel.css">

    <!-- 수량 -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // 인풋 요소
        var peopleInput = document.getElementById('inputMember');
        var roomInput = document.getElementById('inputRoom4');

        // +/- 버튼
        var plusPeopleBtn = document.getElementById('plusPeople');
        var minusPeopleBtn = document.getElementById('minusPeople');
        var plusRoomBtn = document.getElementById('plusRoom');
        var minusRoomBtn = document.getElementById('minusRoom');

        // 클릭버튼
        plusPeopleBtn.addEventListener('click', function () {
            peopleInput.value = parseInt(peopleInput.value) + 1;
        });

        minusPeopleBtn.addEventListener('click', function () {
            if (parseInt(peopleInput.value) > 0) {
                peopleInput.value = parseInt(peopleInput.value) - 1;
            }
        });

        plusRoomBtn.addEventListener('click', function () {
            roomInput.value = parseInt(roomInput.value) + 1;
        });

        minusRoomBtn.addEventListener('click', function () {
            if (parseInt(roomInput.value) > 0) {
                roomInput.value = parseInt(roomInput.value) - 1;
            }
        });
    });
</script>

</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<!-- 상단 케러셀 -->
<div id="carouselExampleIndicators" class="carousel slide">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="hotel_image/hotel_01.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="hotel_image/hotel_02.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="hotel_image/hotel_06.jpg" class="d-block w-100" alt="...">
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
    <div style="margin-bottom: 30px;"></div>
</div>

<!-- 호텔 검색 -->
<div class="cardbox" id="hotel-search-box">
<div class="rounded p-3 mb-3" style="background-color: #f8f9fa;">
    <form class="row g-3">
        <div class="col-md-6">
            <label for="inputCheckin4" class="form-label">Check inㅤ</label>
            <input type="date" min="2023-01-18" name="checkin" id="inputCheckin4">
        </div>
        <div class="col-md-6">
            <label for="inputCheckout4" class="form-label">Check outㅤ </label>
            <input type="date" min="2023-01-20" name="checkin" id="inputCheckout4">
        </div>
        <div class="col-12">
            <label for="inputCity" class="form-label">국가검색</label>
            <input type="text" class="form-control" id="inputCity" placeholder="Korea">
        </div>
        <div class="col-md-8">
            <label for="inputHotel" class="form-label">호텔검색</label>
            <input type="text" class="form-control" id="inputHotel" placeholder="와이키키 호텔">
        </div>
        <!-- 인원 -->
        <div class="col-md-2">
            <label for="inputMember" class="form-label">인원</label>
            <div class="input-group">
                <button type="button" class="btn btn-outline-secondary" id="minusPeople">-</button>
                <input type="text" class="form-control" id="inputMember" value="0" readonly>
                <button type="button" class="btn btn-outline-secondary" id="plusPeople">+</button>
            </div>
        </div>
        
        <!-- 객실 -->
        <div class="col-md-2">
            <label for="inputRoom4" class="form-label">객실</label>
            <div class="input-group">
                <button type="button" class="btn btn-outline-secondary" id="minusRoom">-</button>
                <input type="text" class="form-control" id="inputRoom4" value="0" readonly>
                <button type="button" class="btn btn-outline-secondary" id="plusRoom">+</button>
            </div>
        </div>

        <!-- 애견동반 -->
        <div class="col-12">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="gridCheck">
                <label class="form-check-label" for="gridCheck">
                    애견동반
                </label>
            </div>
        </div>
        
        <!-- 검색버튼 -->
        <div class="col-12">
            <button type="submit" class="btn btn-primary">검색</button>
        </div>
</div>
</div>


<!-- 추천상품 -->
<div class="cardbox text-center"> 
    <h2 id="font">모두의 추천상품</h2>
    <div class="row row-cols-1 row-cols-md-2 g-4" id="cardbox">
        <div class="col" id="card2">
            <div class="card">
                <img src="hotel_image/hotel_07.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">몽키 플라자 리조트 괌</h5>
                    <p class="card-text">#3.5성급 #괌호텔 #추천호텔 </p>
                </div>
            </div>
        </div>
        <div class="col" id="card2">
            <div class="card">
                <img src="hotel_image/hotel_08.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">몽키 플라자 호텔 로마</h5>
                    <p class="card-text">#4성급 #로마호텔 #추천호텔</p>
                </div>
            </div>
        </div>
        <div class="col" id="card2">
            <div class="card">
                <img src="hotel_image/hotel_10.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">몽키 플라자 리조트 하와이</h5>
                    <p class="card-text">#3.5성급 #하와이 #와이키키리조트 #추천</p>
                </div>
            </div>
        </div>
        <div class="col" id="card2">
            <div class="card">
                <img src="hotel_image/hotel_09.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">몽키 플라자 호텔 그리스</h5>
                    <p class="card-text">#4성급 #산토리니호텔 #추천호텔</p>
                </div>
            </div>
        </div>
        <div class="col" id="card2">
            <div class="card">
                <img src="hotel_image/hotel_11.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">몽키 플라자 호텔 호주</h5>
                    <p class="card-text">#5성급 #시드니호텔 #추천호텔</p>
                </div>
            </div> 
        </div>
        <div class="col" id="card2">
            <div class="card">
                <img src="hotel_image/hotel_12.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">몽키 플라자 호텔 영국</h5>
                    <p class="card-text">#4성급 #런던호텔 #추천호텔</p>
                </div>
            </div>  
        </div>
</div>

</body>
</html>



