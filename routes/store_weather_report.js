var express = require('express');
const pool = require('./pg_db_connection');
var axios = require('axios');
const { storeWeatherReport } = require('./queries');
var router = express.Router();

router.post('/', function(req, res, next) {
    //********Get weather details and store it in the db */
    (async()=>{
        try {
            if (!!req.body.country_city) {
                var config = {
                    method: 'get',
                    url: `https://api.openweathermap.org/data/2.5/weather?q=${req.body.country_city}&appid=6f4922cceb93c870cd6e55d81b3f7c89`,
                    headers: { }
                  };
                  
                  axios(config)
                  .then(function (response) {
                    //******store and return the api data */
                    if (!!response.data) {
                        let storeData = {
                            "client_id":response.data.id,
                            "incident_desc":response.data.weather[0].description,
                            "city":response.data.name,
                            "country":response.data.sys.country,
                            "date":"2022/12/12",
                            "weather_report":JSON.stringify(response.data)
                        };

                        console.log("Data to store in db : ",storeData)
                         storeWeatherReport(storeData,res);
                    }
                    else{
                        res.status(200).json({message:"no data found",success:"true",payload:response.data})
                    }
                  })
                  .catch(function (error) {
                    res.status(422).json({message:error.response.data.message,success:"false"})
                    console.log(error);
                  });
            }
           else{
            res.status(422).json({message:"Country | City name required",success:"false"})
           }


              
        } catch (error) {
            res.status(422).json({message:error,success:"false"})
        }
       
    })()
    
});

module.exports = router;