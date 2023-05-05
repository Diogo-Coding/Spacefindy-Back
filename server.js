const addHours = require('date-fns/addHours')

require("dotenv").config()

const express = require("express")
const helmet = require("helmet");
const cors = require("cors")
const morgan = require("morgan")
const { default: fetch } = require("node-fetch")
const mysql = require('mysql2')

const PORT = 9000
const app = express()

app.use(express.json())
app.use(express.urlencoded({ extended: true }))
app.use(morgan("dev"))
app.use(helmet());
const whitelist = ['https://localhost:8083'];
const corsOptions = {
  origin: function (origin, callback) {
    if (whitelist.indexOf(origin) !== -1 || !origin) {
      callback(null, true);
    } else {
      callback(new Error('Not allowed by CORS'));
    }
  }
};

// app.use(function(req, res, next) {
//   console.log(`${req.method} - ${req.url}`);
//   next();
// });

app.use(cors(corsOptions))

// === HTTPS === //
// const https = require('https');
// const fs = require('fs');
// const options = {
//   key: fs.readFileSync('./localhost-key.pem'),
//   cert: fs.readFileSync('./localhost.pem'),
// };
// https
//   .createServer(options, app)
//   .listen(PORT);


// === API REMOTONIST API/DB === //
let con;
function handleDisconnect() {
  con = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
  })
  con.connect(function(err) {
    if (err) {
      console.log('Error connecting to database: ', err)
      setTimeout(handleDisconnect, 2000)
    } else {
      console.log('Connected to DB')
    }
  })
  con.on('error', function (err) {
    console.log('db error', err)
    if (err.code === 'PROTOCOL_CONNECTION_LOST') {
      handleDisconnect()
    } else {
      throw err
    }
  })
}
handleDisconnect()

app.get('/getAllUsers', (req, res) => {
  let sentence = `SELECT * FROM users`
  con.query(sentence, function(err, results, fields) {
      // console.log(results) // results contains rows returned by server
      // console.log(fields) // fields contains extra meta data about results, if available
      res.json(results)
      if (err) {
        console.log(err)
      }
    }
  )
})

app.post('/deleteUser', (req, res) => {
  let id = req.body.id
  let sentence = `DELETE FROM users WHERE id = ${id}`
  con.query(sentence, function(err, results, fields) {
      // console.log(results) // results contains rows returned by server
      // console.log(fields) // fields contains extra meta data about results, if available
      res.json(results)
      if (err) {
        console.log(err)
      }
    }
  )
})

app.post('/createUser', (req, res) => {
  let username = req.body.username
  let password = req.body.password
  let sentence = `INSERT INTO users (username, password) VALUES ('${username}', '${password}')`
  con.query(sentence, function(err, results, fields) {
      // console.log(results) // results contains rows returned by server
      // console.log(fields) // fields contains extra meta data about results, if available
      res.json(results)
      if (err) {
        console.log(err)
      }
    }
  )
})

app.post('/modifyUser', (req, res) => {
  let id = req.body.id
  let username = req.body.newUsername
  let role = req.body.newRole
  let sentence = `UPDATE users SET username='${username}', role='${role}' WHERE id='${id}'`
  con.query(sentence, function(err, results, fields) {
      // console.log(results) // results contains rows returned by server
      // console.log(fields) // fields contains extra meta data about results, if available
      res.json(results)
      if (err) {
        console.log(err)
      }
    }
  )
})



app.post('/checkLoginDB', (req, res) => {
   let username = req.body.username

   let sentence = `SELECT * FROM users WHERE username = '${username}'`
   con.query(sentence, function(err, results, fields) {
      // console.log(results)
      res.json(results)
      if (err) {
         console.log(err)
      }
   })
})

// === API CALLS === //

app.get("/", (req, res) => {
  res.send("Hello World!")
})

app.listen(9000)
