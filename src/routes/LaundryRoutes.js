const express = require('express');
const router = express.Router();
const LaundryController = require('../controllers/LaundryController');

// Obtener las prendas que debe el lavadero
router.get('/laundry/pending', LaundryController.getItemsInLaundry);


module.exports = router;
