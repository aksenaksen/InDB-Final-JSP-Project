<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reviews</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            padding: 20px;
        }
        .add-review-btn {
            display: inline-block;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            text-decoration: none;
            margin-top: 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .add-review-btn:hover {
            background-color: #0056b3;
        }

        .review-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .review-header {
            font-size: 1.2em;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .review-body {
            margin-bottom: 10px;
        }

        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .pagination a {
            margin: 0 5px;
            padding: 10px 15px;
            text-decoration: none;
            color: #007bff;
            border: 1px solid #007bff;
            border-radius: 5px;
            background-color: transparent;
            transition: background-color 0.3s ease;
        }

        .pagination a:hover {
            background-color: #007bff;
            color: #fff;
        }

        .pagination .current {
            background-color: #007bff;
            color: #fff;
            border: 1px solid #007bff;
            border-radius: 5px;
            padding: 10px 15px;
            margin: 0 5px;
        }

    </style>
</head>
<body>
<h1>Course Reviews</h1>

<c:forEach var="rev" items="${reviewDto.content}">
    <div class="review-container">
        <div class="review-body">${rev.review}</div>
    </div>
</c:forEach>

<div class="pagination">
    <c:if test="${reviewDto.hasPrevious()}">
        <a href="/course/${courseId}/review?page=${reviewDto.number - 1}&size=${reviewDto.size}">Previous</a>
    </c:if>
    <span class="current">${reviewDto.number + 1}</span>
    <c:if test="${reviewDto.hasNext()}">
        <a href="/course/${courseId}/review?page=${reviewDto.number + 1}&size=${reviewDto.size}">Next</a>
    </c:if>
</div>
<% if (session.getAttribute("user") != null) { %>
<a href="/course/${courseId}/insert/review" class="add-review-btn">Add Review</a>
<% } %>
</body>
</html>
