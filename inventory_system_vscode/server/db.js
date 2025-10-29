const sqlite3 = require('sqlite3').verbose();
const path = require('path');

const dbPath = path.join(__dirname, 'inventory.db');
const db = new sqlite3.Database(dbPath, err => {
  if (err) console.error('❌ Database connection failed:', err.message);
  else console.log('✅ Connected to SQLite database.');
});

db.serialize(() => {
  db.run(`CREATE TABLE IF NOT EXISTS products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    sku TEXT,
    category TEXT,
    quantity INTEGER,
    supplier TEXT,
    price REAL,
    location TEXT
  )`);
});

module.exports = db;
