const express = require('express');
const router = express.Router();

const mainController = require('./controllers/mainController');

router.get('/', mainController.homePage);
router.get('/article/:id', mainController.articlePage);
router.get('/boutique', mainController.boutiquePage);
router.get('/catalogue', mainController.cataloguePage);

module.exports = router;
