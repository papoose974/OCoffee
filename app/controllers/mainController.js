const dataMapper = require('./../dataMapper');

mainController = {

    homePage: async (req, res) => {
        try {
        const coffees = await dataMapper.getAllCoffee();    
        res.render ('accueil', { coffees });
        } catch (error) {
        console.log(error);
        res.status(500).render('404');
        }
    },

    cataloguePage: async (req, res) => {
        try {
        const coffees = await dataMapper.getAllCoffee();    
        res.render ('catalogue', { coffees });
        } catch (error) {
        console.log(error);
        res.status(500).render('404');
        }
    },
               
    articlePage: async (req, res) => {
        try {
        const id = parseInt(req.params.id, 10);
        const coffeebyId = await dataMapper.getCoffeebyID(id);  
        console.log(coffeebyId);  
        res.render ('article', { coffeebyId });
        } catch (error) {
        console.log(error);
        res.status(500).render('404');
        }
    },

    boutiquePage: (req, res) => {
        try {
        res.render ('boutique');
        } catch (error) {
        console.log(error);
        res.status(500).render('404');
        }
    },
};


module.exports = mainController;