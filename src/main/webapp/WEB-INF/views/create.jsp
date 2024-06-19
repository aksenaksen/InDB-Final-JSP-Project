<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="create.css">
</head>
<% if (request.getAttribute("errorMessage") != null) { %>
<script>
    alert("<%= request.getAttribute("errorMessage") %>");
</script>
<% } %>


<body>
<h1><img src="../index_image/monkey_logo.jpg" alt=""><br></a>MONKEY TOUR</h1>
<br>
<form action="<%= request.getContextPath() %>/user/create" method="post">
    <fieldset>
        <legend>회원가입 정보</legend>
        <ul>
            <li>
                <label for="username">이름</label>
                <div class="input_box"><input type="text" name="username" id="username" required autofocus></div>
            </li>
            <li>
                <label for="userId">아이디</label>
                <div class="input_box"><input type="text" id="userId" name="userId" required></div>
            </li>
            <li>
                <label for="password">비밀번호</label>
                <div class="input_box"><input type="password" name="password" id="password" required></div>
            </li>
            <li>
                <label for="age">나이</label>
                <output id="ageOutput" for="age">25살</output> <!-- 초기값 설정 -->
                <input type="range" name="age" id="age" min="20" max="30" oninput="ageOutput.value = age.value+'살'">
            </li>
            <br>
            <li>
                없음<input type="radio" id="driving_none" name="driving" value="0">
                1종<input type="radio" name="driving" id="driving_1" value="1">
                2종<input type="radio" name="driving" id="driving_2" value="2">
            </li>
            <li>
                <label for="email">이메일</label>
                <div class="input_box"><input type="email" name="email" id="email" required></div>
            </li>
        </ul>
        <button type="submit" class="btn btn-primary">회원가입</button>
    </fieldset>
</form>
</body>

</html>
