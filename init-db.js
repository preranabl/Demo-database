// database/init-db.js
db = db.getSiblingDB('tier-demo'); // database name

db.createCollection('users');

db.users.insertOne({
  name: "Admin User",
  email: "admin@example.com",
  password: "admin123"
});

