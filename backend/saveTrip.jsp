<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>
<%
    String destination = request.getParameter("destination");
    String startDate = request.getParameter("startDate");
    String endDate = request.getParameter("endDate");
    String numberOfPeople = request.getParameter("numberOfPeople");
    String budget = request.getParameter("budget");
    
    // Create the data directory if it doesn't exist
    String dataDir = application.getRealPath("/") + "data";
    File dir = new File(dataDir);
    if (!dir.exists()) {
        dir.mkdir();
    }

    String filePath = dataDir + "/trips.txt";
    try (PrintWriter writer = new PrintWriter(new FileWriter(filePath, true))) {
        writer.println(destination + "," + startDate + "," + endDate + "," + numberOfPeople + "," + budget);
    } catch (IOException e) {
        out.println("<p>Error saving the trip: " + e.getMessage() + "</p>");
    }
    
    response.sendRedirect("viewTrips.jsp");
%>
