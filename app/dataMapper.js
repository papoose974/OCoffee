const client = require('./database');

const dataMapper = {

    getAllCoffee: async () => {
        const query = 'SELECT * FROM "ocoffee"';
        const result = await client.query(query);
        return result.rows;
        },
    getCoffeebyID: async (id) => {
        const query = 'SELECT * FROM "ocoffee" WHERE "id" = $1';
        const values = [id];
        const result = await client.query(query, values);
    return result.rows[0];
    }
};
        
module.exports = dataMapper;