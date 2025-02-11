const express = require('express');
const router = express.Router();

const mainController = require('./controllers/mainController');

router.get("/", (req, res, next) => {
    console.log("La route / est bien atteinte !");
    next();
}, mainController.homePage);
router.get('/article/:id', mainController.articlePage);
router.get('/boutique', mainController.boutiquePage);
router.get('/catalogue', mainController.cataloguePage);

module.exports = router;
