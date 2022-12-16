var mysql = require('mysql2')

let dbconnection = mysql.createPool({
    connectionLimit: 40,
    waitForConnections: true,
    queueLimit: 15,
    host: "127.0.0.1",
    user: "root",
    password: "",
    database: "api_weather",
  });

  module.exports = dbconnection