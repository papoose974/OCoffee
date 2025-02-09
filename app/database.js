 require('dotenv').config();  // Charger les variables d'environnement

const { Client } = require('pg');

// Création du client PostgreSQL en utilisant la chaîne de connexion de Supabase
const client = new Client({
  connectionString: process.env.DATABASE_URL,
});

// Connexion à la base de données
client.connect()
  .then(() => console.log('Connected to Supabase!'))
  .catch(err => console.error('Connection error', err.stack));

// Exporter le client pour l'utiliser ailleurs dans l'application si nécessaire
module.exports = client;
/*
PORT=3000
SUPABASE_URL=https//mlyqhtvdqyoanvyhkher.supabase.co
SUPABASE_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1seXFodHZkcXlvYW52eWhraGVyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzgxNTYyOTMsImV4cCI6MjA1MzczMjI5M30.-fdtaLCOJRMQ2jjfCf3n1JtgSq7_h3SMw3If4fRIDB8
SUPABASE_SERVICE_ROLE_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1seXFodHZkcXlvYW52eWhraGVyIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczODE1NjI5MywiZXhwIjoyMDUzNzMyMjkzfQ.Kn3IwZhUwEd-0WX9XOXqQ-4KGYAkO-Laa2pfmnLGNiE
DATABASE_URL=postgresql//postgres.mlyqhtvdqyoanvyhkher:mQ7XlGEI79SwvA4H@aws-0-eu-west-3.pooler.supabase.com:6543/postgres

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