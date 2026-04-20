# School Trip Management System

This project is a simple web-based application for managing school trips. It allows users to add new trips and view the list of all trips saved in a text file.

## Features
- **Add New Trip**: Users can fill out a form to enter details of a new trip (Destination, Start Date, End Date, Number of People, Budget).
- **View All Trips**: Displays a list of all trips stored in a text file.

## Technology Stack
- **JSP (JavaServer Pages)** for dynamic web content.
- **Servlets** (Embedded in JSP) for server-side logic.
- **HTML/CSS** for front-end user interface.
- **Java I/O** for saving trip data in a text file.

## How It Works
1. **Add New Trip**: The form in `tripForm.jsp` allows the user to enter trip details. When the form is submitted, the data is saved to a file `trips.txt` located in the `data` directory.
2. **View All Trips**: The `viewTrips.jsp` page reads the data from `trips.txt` and displays it in a table.

## Project Structure
- `tripForm.jsp`: Contains the form for adding new trips.
- `saveTrip.jsp`: Handles saving the trip data to a file.
- `viewTrips.jsp`: Displays the list of all trips stored in the `trips.txt` file.

## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/bettonhezron/School-Trip-Manager.git
