# Inventory Management System (VS Code)

**Stack:** Node.js + Express (backend), SQLite (database), Plain HTML/CSS + vanilla JS (frontend).
This project is designed to be opened in **Visual Studio Code** and viewed in your default browser.

## What's included
- `server/` - Express API server (CRUD for inventory, auth, simple audit trail)
- `client/` - Static frontend (index.html + JS) that talks to the API
- `db/` - SQLite database file (`inventory.db`) pre-seeded with demo data and an admin user
- `inventory_system_vscode.zip` - packaged project (this file)

## Quick start (on your machine)
1. Install Node.js (v14+ recommended)
2. Open the project folder in VS Code.
3. From the project root, install dependencies:
   ```bash
   npm install
   ```
4. Start the server:
   ```bash
   npm start
   ```
5. Open `client/index.html` in your browser (or visit http://127.0.0.1:3000 if you want the server to serve the client).
   - The API runs on **http://localhost:3000** by default.
6. Login credentials (demo):
   - username: `admin`
   - password: `admin123`

## Notes
- The DB is SQLite and located at `db/inventory.db`. It's pre-seeded with demo products and one admin user.
- Authentication is JWT-based. For simplicity the demo stores the user's password in plain text in the DB; **do not use this in production**. Replace with bcrypt in real apps.
- Audit trail: every create/update/delete on products is logged in `audit_log` table.
- Export CSV: frontend provides a CSV export of current listing.
- If you'd prefer React for frontend or a different DB (MySQL/Postgres), tell me and I can adapt the project.

## Files of interest
- `server/server.js` - main Express server
- `server/db.js` - SQLite connection helper
- `server/routes/inventory.js` - inventory endpoints
- `client/index.html` - frontend UI
- `client/app.js` - frontend logic

If anything doesn't run or you want additional features (role-based UI, production-ready auth, ERP sync stubs), tell me and I'll update the project.
