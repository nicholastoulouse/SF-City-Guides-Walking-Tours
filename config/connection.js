var mysql = require('mysql')

var connection = mysql.createConnection({
   host: '127.0.0.1',
   user: 'root',
   password: process.env.PASSWORD,
   database: 'walking_tours_db'
});

connection.connect(function(error){
   if (error){
      console.log(error)
      return 
   }
   console.log('connected as id ' + connection.threadId)
})

module.exports=connection