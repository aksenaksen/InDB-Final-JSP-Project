<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>monkey tour</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <link rel="stylesheet" href="index.css">
</head>
<body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
  <br>
  <h1><a href="./index/mainpage.jsp" target="main"><img src="./index_image/monkey_logo.jpg" alt=""></a>MONKEY TOUR</h1>
  <br>
  <div class="for_mobile">
    <div class="container" id="search_btn">
      <input type="text">
      <button>검색</button>
    </div>
    <div class="login_join">
      <a href="../Sign_in_Form/Login.jsp"><button>로그인</button></a>
      <a href="../Sign_in_Form/Join.jsp"><button>회원가입</button></a>
    </div>
    <div class="container" id="linkpage_1">
      <ul>
        <li><a href="../oversea/oversea.jsp" target="main"><b>해외여행</b></a></li>
        <li><a href="../domestic/domestic.jsp" target="main"><b>국내여행</b></a></li>
        <li><a href="../airline/airline.jsp" target="main"><b>항공</b></a></li>
        <li><a href="../hotel/hotel.jsp" target="main"><b>호텔</b></a></li>
      </ul> 
    </div>
  </div>
  <iframe src="./mainpage.jsp" width="100%" height="700px" frameborder="0" name="main"></iframe>
</body>
</html>