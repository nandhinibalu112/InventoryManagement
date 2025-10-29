-- SQL for creating tables (for reference)
CREATE TABLE users (id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT UNIQUE, password TEXT, role TEXT, created_at TEXT);
CREATE TABLE products (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, sku TEXT UNIQUE, category TEXT, quantity INTEGER, supplier TEXT, price REAL, location TEXT, created_at TEXT, updated_at TEXT);
CREATE TABLE audit_log (id INTEGER PRIMARY KEY AUTOINCREMENT, product_id INTEGER, action TEXT, details TEXT, user TEXT, timestamp TEXT);
CREATE TABLE deleted_items (id INTEGER PRIMARY KEY AUTOINCREMENT, product_id INTEGER, snapshot TEXT, deleted_by TEXT, deleted_at TEXT);
