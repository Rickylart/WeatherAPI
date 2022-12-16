const dbconnection = require('./mysql_db_connection');
const pool = require('./pg_db_connection');


const storeWeatherReport = (data,res) => {
    //*****postgres way */
    pool.query('INSERT INTO incidents (client_id,incident_desc,city,country,date,weather_report) VALUES ($1,$2,$3,$4,$5,$6) RETURNING *', 
         [
                data.client_id,
                data.incident_desc,
                data.city,
                data.country,
                data.date,
                data.weather_report
              ], 
        (error, results) => {
        if (error) {
          throw error
        }
        res.status(200).json({message:"Data Store",success:"true",payload:data})
      })

    //******mysql own */
        //   let sql = `INSERT INTO  incidents(client_id,incident_desc,city,country,date,weather_report) VALUES(?,?,?,?,?,?) `;

        // dbconnection.getConnection(function (err, connection) {
        //   if (err) {
        //     console.log(err);
        //     return;
        //   } else {
        //     connection.query(
        //       sql,
        //       [
        //         data.client_id,
        //         data.incident_desc,
        //         data.city,
        //         data.country,
        //         data.date,
        //         data.weather_report
        //       ],
    
        //       function (err, result) {
        //         connection.release();
        //         if (err) {
        //           console.log(err);
        //           res.status(422).json({message:err,success:"false"})
        //           return;
        //         } else {
        //             res.status(200).json({message:"Data Store",success:"true",payload:data})
        //         }
        //       }
        //     );
        //   }
        // });

}


const fetchWeatherReport = (res) => {
      //******get stored weather report from the db postgres way */
      pool.query('SELECT * FROM incidents ORDER BY id ASC', (error, results) => {
        if (error) {
          throw error
        }
        res.status(200).json(results.rows)
      })


//******mysql way */
        // let sql = `SELECT * FROM incidents ORDER BY id ASC `;

        // dbconnection.getConnection(function (err, connection) {
        //   if (err) {
        //     console.log(err);
        //     return;
        //   } else {
        //     connection.query(
        //       sql,
        //       [],
    
        //       function (err, result) {
        //         connection.release();
        //         if (err) {
        //           console.log(err);
        //           return;
        //         } else {
        //           if (result.length > 0) {
        //              res.status(200).json({message:"Data Found",success:"true",payload:result})
        //           } else {
        //             res.status(422).json({message:"No data found",success:"false"})
        //             return insertAttempt(req, res, next);
        //           }
        //         }
        //       }
        //     );
        //   }
        // });
}


module.exports = {storeWeatherReport,fetchWeatherReport}