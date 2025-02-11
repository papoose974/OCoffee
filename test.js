const { Client } = require('pg');

// Récupérer la variable d'environnement DATABASE_URL de Vercel
const DATABASE_URL = process.env.DATABASE_URL;

const client = new Client({
  connectionString: DATABASE_URL,
});

async function testConnection() {
  try {
    await client.connect();
    console.log('Connection to database successful!');
  } catch (error) {
    console.error('Connection error:', error.message);
  } finally {
    await client.end();
  }
}

testConnection();
