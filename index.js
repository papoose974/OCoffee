require('dotenv').config();
console.log("DATABASE_URL:", process.env.DATABASE_URL);


const express = require('express');
const router = require('./app/router');
const db = require('./app/database');
const app = express();
const path = require('path');

const PORT = process.env.PORT || 4000;

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'app/views'));

console.log('Views directory:', app.get('views'));


app.use(express.static('public'));

db.query('SELECT NOW()', (err, res) => {
  if (err) {
    console.error('Error executing query', err.stack);
  } else {
    console.log('Database connected:', res.rows[0]);
  }
});

app.use(router);

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
