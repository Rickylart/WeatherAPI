const Pool = require('pg').Pool

const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'api_weather',
  password: 'developer',
  port: 5432,
})


module.exports = pool