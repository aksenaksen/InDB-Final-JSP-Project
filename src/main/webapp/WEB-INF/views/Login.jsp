<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="Login.css">
</head>


<% if (request.getAttribute("errorMessage") != null) { %>
<script>
    alert("<%= request.getAttribute("errorMessage") %>");
</script>
<% } %>
<body>
<h1><img src="../index_image/monkey_logo.jpg" alt=""><br></a>MONKEY TOUR</h1>
<br>
<form action="<%=request.getContextPath()%>/user/login" method="post">
    <ul>
        <li>
            <label for="userId">아이디</label>
            <input type="text" id="userId" name="userId" required autofocus>
        </li>
        <li>
            <label for="password">비밀번호</label>
            <input type="password" name="password" id="password">
        </li>
    </ul>
    <input type="submit" value="로그인" class="btn btn-primary"/>
</form>
</body>

</html>