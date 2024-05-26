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
    <link rel="stylesheet" href="./Join.css">
</head>

<body>
    <form>
        <fieldset>
            <legend>회원가입 정보</legend>
            <ul>
                <li>
                    <label for="name">이름</label>
                    <div class="input_box"><input type="text" name="name" id="name" required autofocus></div>
                </li>
                <li>
                    <label for="id">아이디</label>
                    <div class="input_box"><input type="text" id="id" required></div>
                </li>
                <li>
                    <label for="pw">비밀번호</label>
                    <div class="input_box"><input type="password" name="비밀번호" id="password"></div>
                </li>
                <li>
                    <label for="age">나이</label>
                    <output id="ageOutput" for="age">25살</output> <!-- 초기값 설정 -->
                    <input type="range" name="나이" id="age" min="20" max="30" oninput="ageOutput.value = age.value+'살'">
                </li>
                <br>
                <li>
                    <label for="driving">운전면허 여부</label>
                    없음<input type="radio" id="driving" name="driving">
                    1종<input type="radio" name="driving" id="driving">
                    2종<input type="radio" name="driving" id="driving">
                </li>
                <li>
                    <label for="email">이메일</label>
                    <div class="input_box"><input type="email" name="email" id="email"></div>
                </li>

            </ul>
            <a class="btn btn-primary" href="../index/index.html" role="button">회원가입</a>
        </fieldset>
    </form>
</body>

</html>