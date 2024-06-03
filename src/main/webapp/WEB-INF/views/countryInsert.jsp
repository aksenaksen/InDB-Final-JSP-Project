<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Country Entity Form</title>
</head>
<body>
<h1>Enter Country Details</h1>
<form action="/course/insert" method="post" enctype="multipart/form-data">
    <label for="title">Title:</label>
    <input type="text" id="title" name="title" required /><br/>

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required /><br/>

    <label for="notice">Notice:</label>
    <input type="text" id="notice" name="notice" required /><br/>

    <label for="culture">Culture:</label>
    <input type="text" id="culture" name="culture" required /><br/>

    <label for="imgPath">Image Path:</label>
    <input type="file" id="imgPath" name="file" accept=".png, .jpg, .jpeg" required /><br/>

    <label for="courseType">Course Type:</label>
    <select id="courseType" name="courseType" required>
        <option value="">Select Course Type</option>
        <option value="DOMESTIC">Domestic</option>
        <option value="OVERSEA">Oversea</option>
    </select><br/>

    <input type="submit" value="Submit" />
</form>
</body>
</html>