require('dotenv').config();

const express = require('express');
const router = require('./app/router');
const db = require('./app/database');
const app = express();

const PORT = process.env.PORT || 4000;

app.set('view engine', 'ejs');
app.set('views', 'app/views');

app.use(express.static('public'));

app.use(router);

app.listen(PORT, () => {
  console.log(`Listening on http://localhost:${PORT}`);
});
