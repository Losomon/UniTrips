# UniTrips - University Trip Management System

## 🚀 Quick Start

### Frontend SPA (Standalone - No server needed)
```
Open frontend/index.html in your browser
Demo logins:
- Admin: admin / admin123
- Student: ENG001 / student123
```
- Modern dashboard with admin/student views
- Trips management, approvals, notifications, calendar
- Fully self-contained JavaScript app

### Backend JSP Web App (Tomcat/ servlet container)
 1. Copy `backend/` to your Tomcat `webapps/` (rename folder to `unitrips` if desired)
 2. Start Tomcat
 3. Visit `http://localhost:8080/unitrips/tripForm.jsp`
 4. API endpoint: `http://localhost:8080/unitrips/api/trips.jsp`
- Simple CRUD for trips (file-based storage in `data/trips.txt`)
- Basic HTML forms

## 📁 Structure
 ```
 UniTrips/
 ├── frontend/           # Modern SPA Dashboard
 │   ├── index.html
 │   ├── index.css
 │   ├── index.js
 │   └── styles.css      # Legacy
 ├── backend/            # JSP Web App
 │   ├── api/            # JSON API endpoints
 │   │   └── trips.jsp
 │   ├── tripForm.jsp
 │   ├── saveTrip.jsp
 │   ├── viewTrips.jsp
 │   └── WEB-INF/web.xml
 ├── LICENSE
 ├── README.md
 ├── CODE_OF_CONDUCT.md
 ├── CONTRIBUTING.md
 ├── SECURITY.md
 └── TODO.md
 ```

## Features

**Frontend:**
- Admin dashboard with stats, approvals workflow
- Student trip browser & applications
- Notifications system
- Calendar view
- Responsive dark theme

**Backend:**
- File-based trip storage
- Add/view trips
- Tomcat deployable

## Development
- Frontend: Pure HTML/CSS/JS - edit & refresh
- Backend: JSP - deploy to servlet container

Enjoy managing university trips! 🎒✈️

