<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>일본 탐험하기</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../${countryDto.title}.css">

    <script>

        function appendCourseId(courseId){
            const currentUrl = window.location.href;
            return currentUrl+"/" + courseId;
        }
    </script>
</head>
<body>


    <div class="container mt-4">
        <section id="introduction" class="mb-4">
            <h2>${countryDto.name} 소개</h2>
            <p>${countryDto.notice}</p>
            <img src="../country_image/${countryDto.title}.jpg" class="img-fluid" alt="일본의 경치">
        </section>

        <section id="landmarks" class="mb-4">
            <h2>유명한 명소</h2>
            <div class="row">

                <c:forEach var="course" items="${courseList}">
                    <div class="col-md-4">
                        <div class="card">
                            <img src="/course/course_image/${course.title}.jpg" class="card-img-top" alt="후지산">
                            <div class="card-body">
                                <h5 class="card-title">${course.name} 코스</h5>
                                <p class="card-text">${course.notice}</p>
                                <a href="${countryDto.id}/${course.id}" class="btn btn-primary">예약하기</a>
                                <a href="/course/${course.id}/review" class="btn btn-primary">리뷰보기</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </section>

        <section id="culture" class="mb-4">
            <h2>${countryDto.name} 문화</h2>
            <p>${countryDto.culture}</p>
        </section>
    </div>

    <footer class="bg-dark text-white text-center py-3">
        <p>아름다운 ${countryDto.name}에 대해 더 알아보세요.</p>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
