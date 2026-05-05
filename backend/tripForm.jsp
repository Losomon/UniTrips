<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Trip</title>
    <style>
        .container {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            font-family: Arial, sans-serif;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add New Trip</h2>
        <form action="saveTrip.jsp" method="post">
            <div class="form-group">
                <label>Destination:</label>
                <input type="text" name="destination" required>
            </div>
            <div class="form-group">
                <label>Start Date:</label>
                <input type="date" name="startDate" required>
            </div>
            <div class="form-group">
                <label>End Date:</label>
                <input type="date" name="endDate" required>
            </div>
            <div class="form-group">
                <label>Number of People:</label>
                <input type="number" name="numberOfPeople" required>
            </div>
            <div class="form-group">
                <label>Budget:</label>
                <input type="number" name="budget" step="0.01" required>
            </div>
            <button type="submit">Save Trip</button>
        </form>
        <p><a href="viewTrips.jsp">View All Trips</a></p>
    </div>
</body>
</html>