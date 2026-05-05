<%@ page contentType="application/json;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>
<%
    String method = request.getMethod();
    String filePath = application.getRealPath("/") + "data/trips.txt";
    File dataDir = new File(application.getRealPath("/") + "data");
    if (!dataDir.exists()) {
        dataDir.mkdirs();
    }

    response.setHeader("Access-Control-Allow-Origin", "*");
    response.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
    response.setHeader("Access-Control-Allow-Headers", "Content-Type");

    if ("OPTIONS".equalsIgnoreCase(method)) {
        out.print("{}");
        return;
    }

    if ("GET".equalsIgnoreCase(method)) {
        // Return all trips as JSON
        File file = new File(filePath);
        StringBuilder json = new StringBuilder("[");
        boolean first = true;
        
        if (file.exists()) {
            try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
                String line;
                int id = 1;
                while ((line = reader.readLine()) != null) {
                    String[] parts = line.split(",", -1);
                    if (parts.length >= 5) {
                        if (!first) json.append(",");
                        first = false;
                        json.append("{\"id\":").append(id++)
                            .append(",\"destination\":\"").append(escape(parts[0])).append("\"")
                            .append(",\"startDate\":\"").append(escape(parts[1])).append("\"")
                            .append(",\"endDate\":\"").append(escape(parts[2])).append("\"")
                            .append(",\"numberOfPeople\":\"").append(escape(parts[3])).append("\"")
                            .append(",\"budget\":\"").append(escape(parts[4])).append("\"}");
                    }
                }
            } catch (Exception e) {
                response.setStatus(500);
                out.print("{\"error\":\"" + escape(e.getMessage()) + "\"}");
                return;
            }
        }
        json.append("]");
        out.print(json.toString());
        
    } else if ("POST".equalsIgnoreCase(method)) {
        // Save a new trip
        String destination = request.getParameter("destination");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String numberOfPeople = request.getParameter("numberOfPeople");
        String budget = request.getParameter("budget");
        
        if (destination == null || startDate == null || endDate == null || numberOfPeople == null || budget == null) {
            response.setStatus(400);
            out.print("{\"success\":false,\"error\":\"Missing required fields\"}");
            return;
        }
        
        try (PrintWriter outFile = new PrintWriter(new FileWriter(filePath, true))) {
            outFile.println(destination + "," + startDate + "," + endDate + "," + numberOfPeople + "," + budget);
            out.print("{\"success\":true,\"message\":\"Trip saved successfully\"}");
        } catch (Exception e) {
            response.setStatus(500);
            out.print("{\"success\":false,\"error\":\"" + escape(e.getMessage()) + "\"}");
        }
    }
%>
<%!
    String escape(String s) {
        if (s == null) return "";
        return s.replace("\\", "\\\\").replace("\"", "\\\"");
    }
%>