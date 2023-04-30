const mysql = require('mysql2/promise');

const pool = mysql.createPool({
  host: 'mysql.cykgenz62nm7.us-east-1.rds.amazonaws.com',
  user: 'admin',
  password: 'Pang123456',
  port: '3306',
  database: 'project_database',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

module.exports = pool;