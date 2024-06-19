<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Reservations</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
          crossorigin="anonymous">
    <style>
        .reservation-card {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>내 예약 목록</h1>
    <div class="row">
        <c:forEach items="${dtoList}" var="reservation">
            <div class="col-md-4">
                <div class="card reservation-card">
                    <div class="card-body">
                        <p class="card-text">체크인: ${reservation.checkInDate}</p>
                        <p class="card-text">체크아웃: ${reservation.checkOutDate}</p>
                        <p class="card-text">유저: ${reservation.userId}</p>
                        <form action="/reservation/delete/${reservation.id}/<%=request.getSession().getAttribute("user").toString()%>" method="post" onsubmit="confirmCancellation()">
                            <button type="submit" class="btn btn-danger">예약 취소</button>
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>



<!-- Bootstrap JS (Optional if you need JavaScript functionalities) -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>
