<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Reservation Form</title>
    <link rel="stylesheet" href="/user/create.css">

    <% if (request.getAttribute("errorMessage") != null) { %>
    <script>
        alert("<%= request.getAttribute("errorMessage") %>");
        console.log("<%= request.getAttribute("errorMessage") %>");
    </script>
    <% } %>
</head>
<body>
<h2>Reservation Form</h2>
<form action="${hotelId}" method="post">
    <div>
        <label for="checkInDate">Check-in Date:</label>
        <input type="date" id="checkInDate" name="checkInDate" required>
    </div>
    <div>
        <label for="checkOutDate">Check-out Date:</label>
        <input type="date" id="checkOutDate" name="checkOutDate" required>
    </div>
    <div>
        <button type="submit">Submit</button>
    </div>
</form>
</body>
</html>
