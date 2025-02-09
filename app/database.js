require('dotenv').config();

const { Client } = require('pg');

// Utilise la chaîne de connexion (DATABASE_URL) de Supabase, qui est dans ton fichier .env
const client = new Client({
  connectionString: process.env.DATABASE_URL, // Utilise la variable d'environnement DATABASE_URL
});

client.connect()
  .then(() => console.log('Connected to Supabase PostgreSQL database'))
  .catch(err => console.error('Connection error', err.stack));

module.exports = client;
/*
const pg = require('pg');

const client = new pg.Client({
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    database: process.env.DB_NAME,
});

client.connect();

module.exports = client;
*/