<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hotel List</title>
    <style>
        h2{
            text-align: center;
        }
        .hotel {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 10px;
            width: 98%;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between; /* 아이템들을 동일한 간격으로 정렬 */
            align-items: center; /* 수직 정렬 */
        }

        .hotel p {
            margin: 5px 0;
        }
        .hotel strong {
            color: #333;
        }

        .btn-reserve {
            text-align: right;
            padding: 8px 12px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none; /* 링크 텍스트에 밑줄 제거 */
        }

        .btn-reserve:hover {
            background-color: #0056b3;
            animation-name: scaleup;
            animation-duration: 0.2s;
        }

        .cardbox{
            width: 90%;
        }
    </style>
    <% if (request.getAttribute("errorMessage") != null) { %>
    <script>
        alert("<%= request.getAttribute("errorMessage") %>");
    </script>
    <% } %>
</head>
<body>
<h2>호텔 목록</h2>
<c:forEach var="h" items="${hotel}">
    <div class="hotel">
        <div class="cardbox">
            <p><strong>Hotel ID:</strong> ${h.hotelId}</p>
            <p><strong>Name:</strong> ${h.name}</p>
            <p><strong>IATA Code:</strong> ${h.iataCode}</p>
        </div>
        <a href="/reservation/${courseId}/${h.hotelId}" class="btn-reserve">예약하기</a>
    </div>
</c:forEach>

<script>
    window.onload = () =>{
        checkLogin();
    }
    function checkLogin(){
        if(!<%= session.getAttribute("user")!= null%>){
            alert("로그인 후 이용 가능합니다.");

            window.location.href="/user/login";
        }
    }
</script>
</body>
</html>
