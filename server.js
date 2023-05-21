const addHours = require('date-fns/addHours')

require("dotenv").config()

const express = require("express")
const helmet = require("helmet");
const cors = require("cors")
const morgan = require("morgan")
const { default: fetch } = require("node-fetch")
const mysql = require('mysql2')
const multer = require('multer');

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

app.use(cors(corsOptions))

// === METODO HTTPS (HABILITAR CUANDO SE SUBA A SERVIDOR)=== //
// const https = require('https');
// const fs = require('fs');
// const options = {
//   key: fs.readFileSync('./localhost-key.pem'),
//   cert: fs.readFileSync('./localhost.pem'),
// };
// https
//   .createServer(options, app)
//   .listen(PORT);


// ===================================== API/DB ===================================== //
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

app.post('/getUser', (req, res) => {
  let username = req.body.username
  let sentence = `SELECT * FROM users WHERE username = '${username}'`
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

app.post('/updateUser', (req, res) => {
  let username = req.body.username
  let name = req.body.name
  let surname = req.body.surname
  let email = req.body.email
  if (email == 'null') email = ''
  let profile_desc = req.body.profile_desc

  let sentence = `UPDATE users SET name='${name}', surname='${surname}', email='${email}', profile_desc='${profile_desc}' WHERE username = '${username}'`
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
  let name = req.body.name
  let surname = req.body.surname
  let created_at = new Date().toISOString().slice(0, 19).replace('T', ' ');
  let sentence = `INSERT INTO users (username, password, name, surname, created_at) VALUES ('${username}', '${password}', '${name}', '${surname}','${created_at}')`
  con.query(sentence, function(err, results, fields) {
      // console.log(results) // results contains rows returned by server
      // console.log(fields) // fields contains extra meta data about results, if available
      if (!err) {
        res.json(results)
      } else {
        res.status(409).json({ error: 'Ya existe un usuario con ese nombre de usuario'})
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


// Storages

app.post('/createStorage', (req, res) => {
  let id_username = req.body.id_username
  let title = req.body.title
  let description = req.body.description
  let location = req.body.location
  let ccaa = req.body.ccaa
  let prov = req.body.prov
  let surface = req.body.surface
  let status = req.body.status
  let published = new Date().toISOString().slice(0, 19).replace('T', ' ');
  let sentence = `INSERT INTO storages (id_username, title, description, location, ccaa, prov, surface, status, published) VALUES ('${id_username}', '${title}', '${description}', '${location}','${ccaa}','${prov}','${surface}','${status}', '${published}')`
  con.query(sentence, function(err, results, fields) {
      // console.log(results) // results contains rows returned by server
      // console.log(fields) // fields contains extra meta data about results, if available
      if (!err) {
        res.json(results)
      } else {
        console.log(err)
      }
    }
  )
})

app.post('/updateStorage', (req, res) => {
  let storage = req.body.storage

  let sentence = `UPDATE storages SET title='${storage.title}', description='${storage.description}', location='${storage.location}', surface='${storage.surface}', status='${storage.status}', ccaa='${storage.ccaa}', prov='${storage.prov}' WHERE id='${storage.id}'`
  con.query(sentence, function(err, results, fields) {
    // console.log(results)
    res.json(results)
    if (err) {
       console.log(err)
    }
 })
})

app.post('/getStoragesFromUser', (req, res) => {
  let id_username = req.body.id_username

  let sentence = `SELECT * FROM storages WHERE id_username = '${id_username}'`
  con.query(sentence, function(err, results, fields) {
     // console.log(results)
     res.json(results)
     if (err) {
        console.log(err)
     }
  })
})

app.post('/getStoragesBySearch', (req, res) => {
  let ccaa = req.body.ccaa
  let prov = req.body.prov

  let sentence
  if (prov) sentence = `SELECT * FROM storages WHERE ccaa='${ccaa}' && prov='${prov}'`
  else sentence = `SELECT * FROM storages WHERE ccaa='${ccaa}'`
  con.query(sentence, function(err, results, fields) {
     // console.log(results)
     res.json(results)
     if (err) {
        console.log(err)
     }
  })
})

app.post('/getStorageById', (req, res) => {
  let id = req.body.id

  let sentence = `SELECT * FROM storages WHERE id='${id}'`
  con.query(sentence, function(err, results, fields) {
     // console.log(results)
     res.json(results)
     if (err) {
        console.log(err)
     }
  })
})

app.post('/getUserFromStorage', (req, res) => {
  let id = req.body.id

  let sentence = `SELECT * FROM users WHERE id='${id}'`
  con.query(sentence, function(err, results, fields) {
     // console.log(results)
     res.json(results)
     if (err) {
        console.log(err)
     }
  })
})

// // Configuración de multer para manejar la carga de archivos
// const storage = multer.diskStorage({
//   destination: (req, file, cb) => {
//     let destinationFolder = 'uploads/';
//     cb(null, destinationFolder);
//   },
//   filename: (req, file, cb) => {
//     cb(null, file.originalname);
//   }
// });

// const upload = multer({ storage: storage });

// // Ruta para cargar archivos
// app.post('/upload', upload.single('file'), (req, res) => {
//   res.send('Archivo cargado correctamente.');
// });

// // Ruta para mostrar una imagen
// app.get('/images/:filename', (req, res) => {
//   const filename = req.params.filename;
//   res.sendFile(`${__dirname}/uploads/${filename}`);
// });

// // Ruta para mostrar un video
// app.get('/videos/:filename', (req, res) => {
//   const filename = req.params.filename;
//   res.sendFile(`${__dirname}/uploads/${filename}`);
// });

// === API CALLS === //

app.get("/", (req, res) => {
  res.send("Hello World!")
})

app.listen(9000)
