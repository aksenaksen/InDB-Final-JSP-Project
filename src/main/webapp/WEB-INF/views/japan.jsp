<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>일본 탐험하기</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="japan.css">
</head>
<body>
    <div class="container mt-4">
        <section id="introduction" class="mb-4">
            <h2>일본 소개</h2>
            <p>일본은 동아시아의 섬나라로, 풍부한 역사, 독특한 문화, 그리고 선진 기술로 잘 알려져 있습니다. 전통과 현대가 공존하는 이곳은 아름다운 자연 풍경과 번화한 도시 생활을 제공합니다.</p>
            <img src="img/japan.jpg" class="img-fluid" alt="일본의 경치">
        </section>

        <section id="landmarks" class="mb-4">
            <h2>유명한 명소</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img src="img/FujiMT.jpg" class="card-img-top" alt="후지산">
                        <div class="card-body">
                            <h5 class="card-title">후지산 코스</h5>
                            <p class="card-text">일본에서 가장 높은 산이자 성스러운 상징입니다.</p>
                            <a href="#" class="btn btn-primary">예약하기</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="img/TokyoTower.jpg" class="card-img-top" alt="도쿄 타워">
                        <div class="card-body">
                            <h5 class="card-title">도쿄 타워 코스</h5>
                            <p class="card-text">일본의 대표적인 랜드마크 중 하나입니다.</p>
                            <a href="#" class="btn btn-primary">예약하기</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="img/Husi.jpg" class="card-img-top" alt="후시미이나리 신사">
                        <div class="card-body">
                            <h5 class="card-title">후시미이나리 신사 코스</h5>
                            <p class="card-text">천 개가 넘는 붉은 토리이로 유명합니다.</p>
                            <a href="#" class="btn btn-primary">예약하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="culture" class="mb-4">
            <h2>일본 문화</h2>
            <p>일본 문화는 전통 예술, 의식, 축제와 같은 고유한 요소들로 가득 차 있습니다. 차도, 꽃꽂이, 전통 음악과 무용은 일본 문화의 중요한 부분입니다.</p>
        </section>
    </div>

    <footer class="bg-dark text-white text-center py-3">
        <p>아름다운 일본에 대해 더 알아보세요.</p>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
