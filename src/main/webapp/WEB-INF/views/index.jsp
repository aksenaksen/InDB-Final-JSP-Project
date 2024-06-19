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
  <h1><a href="./index/mainpage.jsp" target="main"><img src="index_image/monkey_logo.jpg" alt=""></a>MONKEY TOUR</h1>
  <br>
  <div class="for_mobile">
    <div class="container" id="search_btn">
      <input type="text">
      <button>검색</button>
    </div>
    <%
      String user = (String) session.getAttribute("user");
      if (user != null) {
    %>
    <div class="login_join">
      <a href="/reservation/myReservation"><button>내 예약</button></a>
      <a href="/user/logout"><button>로그아웃</button></a>
    </div>
    <% } else { %>
    <div class="login_join">
      <a href="/user/login"><button>로그인</button></a>
      <a href="/user/create"><button>회원가입</button></a>
    </div>
    <% } %>
    <div class="container" id="linkpage_1">
      <ul>
        <li><a href="/course/list_oversea" target="main"><b>여행</b></a></li>
      </ul>
    </div>
  </div>
  <iframe src="/course/list_oversea" width="100%" height="700px" frameborder="0" name="main"></iframe>
</body>
</html>