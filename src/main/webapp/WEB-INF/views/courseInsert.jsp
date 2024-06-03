<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Form</title>
</head>
<body>
<h2>Course Form</h2>
<form action="/course/${courseId}/insert" method="post" enctype="multipart/form-data">
    <label for="title">Title:</label><br>
    <input type="text" id="title" name="title" required><br>

    <label for="course">Course:</label><br>
    <input type="text" id="course" name="name" required><br>

    <label for="notice">Notice:</label><br>
    <input type="text" id="notice" name="notice" required><br>

    <label for="file">Upload File:</label><br>
    <input type="file" id="file" name="file" accept=".png, .jpg, .jpeg" required /><br/>

    <button type="submit">Submit</button>
</form>
</body>
</html>
