<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>
<html>
<head>
    <title>View Trips</title>
    <style>
        .container {
            width: 80%;
            margin: 20px auto;
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>All Trips</h2>
        <table>
            <tr>
                <th>Destination</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Number of People</th>
                <th>Budget</th>
            </tr>
            <%
                String filePath = application.getRealPath("/") + "data/trips.txt";
                File file = new File(filePath);
                if (file.exists()) {
                    BufferedReader reader = new BufferedReader(new FileReader(file));
                    String line;
                    while ((line = reader.readLine()) != null) {
                        String[] parts = line.split(",");
                        out.println("<tr>");
                        for (String part : parts) {
                            out.println("<td>" + part + "</td>");
                        }
                        out.println("</tr>");
                    }
                    reader.close();
                }
            %>
        </table>
        <p><a href="tripForm.jsp">Add New Trip</a></p>
    </div>
</body>
</html>