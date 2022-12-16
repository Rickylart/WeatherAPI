var express = require('express');
const { fetchWeatherReport } = require('./queries');
var router = express.Router();

router.get('/', function(req, res, next) {
    
    try {
        fetchWeatherReport(res)
      } catch (error) {
        console.log(error.message);
      }

    
});

module.exports = router;